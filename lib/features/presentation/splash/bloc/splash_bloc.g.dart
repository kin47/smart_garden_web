// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splash_bloc.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SplashStateCWProxy {
  SplashState status(BaseStateStatus status);

  SplashState message(String? message);

  SplashState actionState(SplashActionState actionState);

  SplashState user(UserEntity? user);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SplashState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SplashState(...).copyWith(id: 12, name: "My name")
  /// ````
  SplashState call({
    BaseStateStatus? status,
    String? message,
    SplashActionState? actionState,
    UserEntity? user,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSplashState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSplashState.copyWith.fieldName(...)`
class _$SplashStateCWProxyImpl implements _$SplashStateCWProxy {
  const _$SplashStateCWProxyImpl(this._value);

  final SplashState _value;

  @override
  SplashState status(BaseStateStatus status) => this(status: status);

  @override
  SplashState message(String? message) => this(message: message);

  @override
  SplashState actionState(SplashActionState actionState) =>
      this(actionState: actionState);

  @override
  SplashState user(UserEntity? user) => this(user: user);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SplashState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SplashState(...).copyWith(id: 12, name: "My name")
  /// ````
  SplashState call({
    Object? status = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? actionState = const $CopyWithPlaceholder(),
    Object? user = const $CopyWithPlaceholder(),
  }) {
    return SplashState(
      status: status == const $CopyWithPlaceholder() || status == null
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as BaseStateStatus,
      message: message == const $CopyWithPlaceholder()
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as String?,
      actionState:
          actionState == const $CopyWithPlaceholder() || actionState == null
              ? _value.actionState
              // ignore: cast_nullable_to_non_nullable
              : actionState as SplashActionState,
      user: user == const $CopyWithPlaceholder()
          ? _value.user
          // ignore: cast_nullable_to_non_nullable
          : user as UserEntity?,
    );
  }
}

extension $SplashStateCopyWith on SplashState {
  /// Returns a callable class that can be used as follows: `instanceOfSplashState.copyWith(...)` or like so:`instanceOfSplashState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SplashStateCWProxy get copyWith => _$SplashStateCWProxyImpl(this);
}
