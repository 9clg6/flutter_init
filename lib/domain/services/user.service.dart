import 'dart:async';

import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:starter_kit/core/localization/generated/locale_keys.g.dart';
import 'package:starter_kit/data/storages/user_preferences.storage.dart';
import 'package:starter_kit/domain/entities/auth.entity.dart';
import 'package:starter_kit/domain/entities/user.entity.dart';
import 'package:starter_kit/domain/params/login.param.dart';
import 'package:starter_kit/domain/services/dialog.service.dart';
import 'package:starter_kit/domain/services/navigation.service.dart';
import 'package:starter_kit/domain/usecases/get_user.use_case.dart';
import 'package:starter_kit/domain/usecases/login.use_case.dart';
import 'package:starter_kit/domain/usecases/logout.use_case.dart';
import 'package:starter_kit/domain/usecases/save_auth.use_case.dart';
import 'package:starter_kit/foundation/interfaces/results.usecases.dart';

/// User service
class UserService {
  /// Constructor
  UserService({
    required NavigationService navigationService,
    required GetUserUseCase getUserUseCase,
    required LoginUseCase loginUseCase,
    required SaveAuthUseCase saveAuthUseCase,
    required LogoutUseCase logoutUseCase,
    required DialogService dialogService,
  }) : _navigationService = navigationService,
       _getUserUseCase = getUserUseCase,
       _loginUseCase = loginUseCase,
       _saveAuthUseCase = saveAuthUseCase,
       _logoutUseCase = logoutUseCase,
       _dialogService = dialogService;

  /// User subject
  final BehaviorSubject<UserEntity?> _userSubject =
      BehaviorSubject<UserEntity?>();

  /// User stream
  Stream<UserEntity?> get userStream => _userSubject.stream;

  /// Current user
  UserEntity? get currentUser => _userSubject.value;

  /// Is authenticated
  bool get isAuthenticated => currentUser != null;

  late final NavigationService _navigationService;
  late final GetUserUseCase _getUserUseCase;
  late final LoginUseCase _loginUseCase;
  late final SaveAuthUseCase _saveAuthUseCase;
  late final LogoutUseCase _logoutUseCase;
  late final DialogService _dialogService;

  /// Load user
  Future<void> loadUser() async {
    final ResultState<UserEntity> user = await _getUserUseCase.execute();
    _userSubject.add(user.data);
  }

  /// Dispose
  void dispose() {
    _userSubject.close();
  }

  /// Get saved email
  Future<String?> getSavedEmail() async {
    return UserPreferencesStorage.getUserEmail();
  }

  /// Clear saved email
  Future<void> clearSavedEmail() async {
    await UserPreferencesStorage.removeUserEmail();
  }

  /// Check if email is saved
  Future<bool> hasSavedEmail() async {
    return UserPreferencesStorage.hasUserEmail();
  }

  /// Login
  Future<void> login({
    required String username,
    required String password,
    required Null Function() onRequest,
    required Null Function() onFinish,
  }) async {
    final LoginParam params = LoginParam(
      username: username,
      password: password,
    );

    onRequest();
    final ResultState<AuthEntity> result = await _loginUseCase.execute(params);

    await result.when(
      success: (AuthEntity data) async {
        onFinish();
        await _saveAuthUseCase.execute(data);

        if (username.contains('@')) {
          await UserPreferencesStorage.saveUserEmail(username);
        }

        await _saveAuthUseCase.execute(data);

        final ResultState<UserEntity> user = await _getUserUseCase.execute();
        _userSubject.add(user.data);
        _navigationService.replaceToHome();
      },
      failure: (Exception exception) async {
        debugPrint('failure: $exception');
        onFinish();
        if (exception is DioException) {
          switch (exception.response?.statusCode) {
            case 400:
              await _dialogService.showLoginErrorDialog(
                title: LocaleKeys.errorOccured.tr(),
                message: LocaleKeys.loginOrPasswordIncorrect.tr(),
              );
          }
        } else if (exception is TimeoutException) {
          await _dialogService.showLoginErrorDialog(
            title: LocaleKeys.errorOccured.tr(),
            message: LocaleKeys.operationTimeout.tr(),
          );
        }
      },
    );
  }

  /// Logout
  /// Complete logout process: clear auth token, email, and user data
  Future<void> logout() async {
    try {
      await _logoutUseCase.execute();

      await clearSavedEmail();

      _userSubject.add(null);

      _navigationService.navigateToSignInPage();
    } on Exception catch (exception) {
      debugPrint('logout: error during logout: $exception');
      _userSubject.add(null);
      _navigationService.navigateToSignInPage();
    }
  }
}
