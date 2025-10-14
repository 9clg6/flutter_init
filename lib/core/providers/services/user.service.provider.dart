import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:starter_kit/core/providers/core/usecases/get_user.use_case.provider.dart';
import 'package:starter_kit/core/providers/core/usecases/login.use_case.provider.dart';
import 'package:starter_kit/core/providers/core/usecases/logout.use_case.provider.dart';
import 'package:starter_kit/core/providers/core/usecases/save_auth.use_case.provider.dart';
import 'package:starter_kit/core/providers/services/dialog.service.provider.dart';
import 'package:starter_kit/core/providers/services/navigation.service.provider.dart';
import 'package:starter_kit/domain/services/user.service.dart';

part 'user.service.provider.g.dart';

/// User service provider
@Riverpod(keepAlive: true)
Future<UserService> userService(Ref ref) async {
  return UserService(
    navigationService: ref.watch(navigationServiceProvider),
    getUserUseCase: await ref.watch(getUserUseCaseProvider.future),
    loginUseCase: await ref.watch(loginUseCaseProvider.future),
    saveAuthUseCase: await ref.watch(saveAuthUseCaseProvider.future),
    logoutUseCase: await ref.watch(logoutUseCaseProvider.future),
    dialogService: ref.watch(dialogServiceProvider),
  );
}
