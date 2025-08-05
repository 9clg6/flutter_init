// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.entity.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AuthEntityCWProxy {
  AuthEntity token(String? token);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AuthEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AuthEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  AuthEntity call({String? token});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAuthEntity.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAuthEntity.copyWith.fieldName(...)`
class _$AuthEntityCWProxyImpl implements _$AuthEntityCWProxy {
  const _$AuthEntityCWProxyImpl(this._value);

  final AuthEntity _value;

  @override
  AuthEntity token(String? token) => this(token: token);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AuthEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AuthEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  AuthEntity call({Object? token = const $CopyWithPlaceholder()}) {
    return AuthEntity(
      token: token == const $CopyWithPlaceholder()
          ? _value.token
          // ignore: cast_nullable_to_non_nullable
          : token as String?,
    );
  }
}

extension $AuthEntityCopyWith on AuthEntity {
  /// Returns a callable class that can be used as follows: `instanceOfAuthEntity.copyWith(...)` or like so:`instanceOfAuthEntity.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AuthEntityCWProxy get copyWith => _$AuthEntityCWProxyImpl(this);
}
