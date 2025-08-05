// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.entity.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UserEntityCWProxy {
  UserEntity id(int? id);

  UserEntity email(String? email);

  UserEntity nickname(String? nickname);

  UserEntity lastname(String? lastname);

  UserEntity firstname(String? firstname);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  UserEntity call({
    int? id,
    String? email,
    String? nickname,
    String? lastname,
    String? firstname,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUserEntity.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUserEntity.copyWith.fieldName(...)`
class _$UserEntityCWProxyImpl implements _$UserEntityCWProxy {
  const _$UserEntityCWProxyImpl(this._value);

  final UserEntity _value;

  @override
  UserEntity id(int? id) => this(id: id);

  @override
  UserEntity email(String? email) => this(email: email);

  @override
  UserEntity nickname(String? nickname) => this(nickname: nickname);

  @override
  UserEntity lastname(String? lastname) => this(lastname: lastname);

  @override
  UserEntity firstname(String? firstname) => this(firstname: firstname);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  UserEntity call({
    Object? id = const $CopyWithPlaceholder(),
    Object? email = const $CopyWithPlaceholder(),
    Object? nickname = const $CopyWithPlaceholder(),
    Object? lastname = const $CopyWithPlaceholder(),
    Object? firstname = const $CopyWithPlaceholder(),
  }) {
    return UserEntity(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      email: email == const $CopyWithPlaceholder()
          ? _value.email
          // ignore: cast_nullable_to_non_nullable
          : email as String?,
      nickname: nickname == const $CopyWithPlaceholder()
          ? _value.nickname
          // ignore: cast_nullable_to_non_nullable
          : nickname as String?,
      lastname: lastname == const $CopyWithPlaceholder()
          ? _value.lastname
          // ignore: cast_nullable_to_non_nullable
          : lastname as String?,
      firstname: firstname == const $CopyWithPlaceholder()
          ? _value.firstname
          // ignore: cast_nullable_to_non_nullable
          : firstname as String?,
    );
  }
}

extension $UserEntityCopyWith on UserEntity {
  /// Returns a callable class that can be used as follows: `instanceOfUserEntity.copyWith(...)` or like so:`instanceOfUserEntity.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UserEntityCWProxy get copyWith => _$UserEntityCWProxyImpl(this);
}
