// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_bloc.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$RegisterStateCWProxy {
  RegisterState status(BaseStateStatus status);

  RegisterState message(String? message);

  RegisterState email(String email);

  RegisterState password(String password);

  RegisterState phoneNumber(String phoneNumber);

  RegisterState name(String name);

  RegisterState isPasswordVisible(bool isPasswordVisible);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `RegisterState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// RegisterState(...).copyWith(id: 12, name: "My name")
  /// ````
  RegisterState call({
    BaseStateStatus? status,
    String? message,
    String? email,
    String? password,
    String? phoneNumber,
    String? name,
    bool? isPasswordVisible,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfRegisterState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfRegisterState.copyWith.fieldName(...)`
class _$RegisterStateCWProxyImpl implements _$RegisterStateCWProxy {
  const _$RegisterStateCWProxyImpl(this._value);

  final RegisterState _value;

  @override
  RegisterState status(BaseStateStatus status) => this(status: status);

  @override
  RegisterState message(String? message) => this(message: message);

  @override
  RegisterState email(String email) => this(email: email);

  @override
  RegisterState password(String password) => this(password: password);

  @override
  RegisterState phoneNumber(String phoneNumber) =>
      this(phoneNumber: phoneNumber);

  @override
  RegisterState name(String name) => this(name: name);

  @override
  RegisterState isPasswordVisible(bool isPasswordVisible) =>
      this(isPasswordVisible: isPasswordVisible);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `RegisterState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// RegisterState(...).copyWith(id: 12, name: "My name")
  /// ````
  RegisterState call({
    Object? status = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? email = const $CopyWithPlaceholder(),
    Object? password = const $CopyWithPlaceholder(),
    Object? phoneNumber = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? isPasswordVisible = const $CopyWithPlaceholder(),
  }) {
    return RegisterState(
      status: status == const $CopyWithPlaceholder() || status == null
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as BaseStateStatus,
      message: message == const $CopyWithPlaceholder()
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as String?,
      email: email == const $CopyWithPlaceholder() || email == null
          ? _value.email
          // ignore: cast_nullable_to_non_nullable
          : email as String,
      password: password == const $CopyWithPlaceholder() || password == null
          ? _value.password
          // ignore: cast_nullable_to_non_nullable
          : password as String,
      phoneNumber:
          phoneNumber == const $CopyWithPlaceholder() || phoneNumber == null
              ? _value.phoneNumber
              // ignore: cast_nullable_to_non_nullable
              : phoneNumber as String,
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      isPasswordVisible: isPasswordVisible == const $CopyWithPlaceholder() ||
              isPasswordVisible == null
          ? _value.isPasswordVisible
          // ignore: cast_nullable_to_non_nullable
          : isPasswordVisible as bool,
    );
  }
}

extension $RegisterStateCopyWith on RegisterState {
  /// Returns a callable class that can be used as follows: `instanceOfRegisterState.copyWith(...)` or like so:`instanceOfRegisterState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$RegisterStateCWProxy get copyWith => _$RegisterStateCWProxyImpl(this);
}
