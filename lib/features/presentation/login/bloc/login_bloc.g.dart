// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_bloc.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LoginStateCWProxy {
  LoginState status(BaseStateStatus status);

  LoginState message(String? message);

  LoginState username(String username);

  LoginState password(String password);

  LoginState isPasswordVisible(bool isPasswordVisible);

  LoginState user(UserEntity? user);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LoginState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LoginState(...).copyWith(id: 12, name: "My name")
  /// ````
  LoginState call({
    BaseStateStatus? status,
    String? message,
    String? username,
    String? password,
    bool? isPasswordVisible,
    UserEntity? user,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfLoginState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfLoginState.copyWith.fieldName(...)`
class _$LoginStateCWProxyImpl implements _$LoginStateCWProxy {
  const _$LoginStateCWProxyImpl(this._value);

  final LoginState _value;

  @override
  LoginState status(BaseStateStatus status) => this(status: status);

  @override
  LoginState message(String? message) => this(message: message);

  @override
  LoginState username(String username) => this(username: username);

  @override
  LoginState password(String password) => this(password: password);

  @override
  LoginState isPasswordVisible(bool isPasswordVisible) =>
      this(isPasswordVisible: isPasswordVisible);

  @override
  LoginState user(UserEntity? user) => this(user: user);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LoginState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LoginState(...).copyWith(id: 12, name: "My name")
  /// ````
  LoginState call({
    Object? status = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? username = const $CopyWithPlaceholder(),
    Object? password = const $CopyWithPlaceholder(),
    Object? isPasswordVisible = const $CopyWithPlaceholder(),
    Object? user = const $CopyWithPlaceholder(),
  }) {
    return LoginState(
      status: status == const $CopyWithPlaceholder() || status == null
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as BaseStateStatus,
      message: message == const $CopyWithPlaceholder()
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as String?,
      username: username == const $CopyWithPlaceholder() || username == null
          ? _value.username
          // ignore: cast_nullable_to_non_nullable
          : username as String,
      password: password == const $CopyWithPlaceholder() || password == null
          ? _value.password
          // ignore: cast_nullable_to_non_nullable
          : password as String,
      isPasswordVisible: isPasswordVisible == const $CopyWithPlaceholder() ||
              isPasswordVisible == null
          ? _value.isPasswordVisible
          // ignore: cast_nullable_to_non_nullable
          : isPasswordVisible as bool,
      user: user == const $CopyWithPlaceholder()
          ? _value.user
          // ignore: cast_nullable_to_non_nullable
          : user as UserEntity?,
    );
  }
}

extension $LoginStateCopyWith on LoginState {
  /// Returns a callable class that can be used as follows: `instanceOfLoginState.copyWith(...)` or like so:`instanceOfLoginState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$LoginStateCWProxy get copyWith => _$LoginStateCWProxyImpl(this);
}
