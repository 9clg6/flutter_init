import 'dart:async';

import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:starter_kit/core/providers/services/user.service.provider.dart';
import 'package:starter_kit/domain/services/user.service.dart';
import 'package:starter_kit/presentation/screens/authentication/authentication.state.dart';

part 'authentication.view_model.g.dart';

/// Authentication View Model
@riverpod
class Authentication extends _$Authentication {
  /// Authentication constructor
  Authentication();

  late UserService _userService;

  /// email controller
  final TextEditingController usernameController = TextEditingController();

  /// password controller
  final TextEditingController passwordController = TextEditingController();

  /// form key
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  /// build
  @override
  Future<AuthenticationState> build() async {
    _userService = await ref.watch(userServiceProvider.future);

    return AuthenticationState.initial();
  }

  /// login
  Future<void> login() async {
    debugPrint('login');
    if (formKey.currentState?.validate() == false) return;
    state = AsyncValue<AuthenticationState>.data(
      state.value!.copyWith(loading: true),
    );

    await _userService.login(
      onRequest: () {
        state = AsyncValue<AuthenticationState>.data(
          state.value!.copyWith(loading: true),
        );
      },
      onFinish: () {
        state = AsyncValue<AuthenticationState>.data(
          state.value!.copyWith(loading: false),
        );
      },
      username: usernameController.text,
      password: passwordController.text,
    );
  }
}
