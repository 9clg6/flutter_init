// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication.state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AuthenticationStateCWProxy {
  AuthenticationState loading(bool loading);

  AuthenticationState isPasswordVisible(bool isPasswordVisible);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AuthenticationState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AuthenticationState(...).copyWith(id: 12, name: "My name")
  /// ````
  AuthenticationState call({bool loading, bool isPasswordVisible});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAuthenticationState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAuthenticationState.copyWith.fieldName(...)`
class _$AuthenticationStateCWProxyImpl implements _$AuthenticationStateCWProxy {
  const _$AuthenticationStateCWProxyImpl(this._value);

  final AuthenticationState _value;

  @override
  AuthenticationState loading(bool loading) => this(loading: loading);

  @override
  AuthenticationState isPasswordVisible(bool isPasswordVisible) =>
      this(isPasswordVisible: isPasswordVisible);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AuthenticationState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AuthenticationState(...).copyWith(id: 12, name: "My name")
  /// ````
  AuthenticationState call({
    Object? loading = const $CopyWithPlaceholder(),
    Object? isPasswordVisible = const $CopyWithPlaceholder(),
  }) {
    return AuthenticationState(
      loading: loading == const $CopyWithPlaceholder()
          ? _value.loading
          // ignore: cast_nullable_to_non_nullable
          : loading as bool,
      isPasswordVisible: isPasswordVisible == const $CopyWithPlaceholder()
          ? _value.isPasswordVisible
          // ignore: cast_nullable_to_non_nullable
          : isPasswordVisible as bool,
    );
  }
}

extension $AuthenticationStateCopyWith on AuthenticationState {
  /// Returns a callable class that can be used as follows: `instanceOfAuthenticationState.copyWith(...)` or like so:`instanceOfAuthenticationState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AuthenticationStateCWProxy get copyWith =>
      _$AuthenticationStateCWProxyImpl(this);
}
