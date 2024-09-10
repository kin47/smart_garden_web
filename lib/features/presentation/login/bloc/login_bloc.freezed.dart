// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) onInputUsername,
    required TResult Function(String password) onInputPassword,
    required TResult Function(bool isVisible) onPasswordVisibilityChanged,
    required TResult Function() login,
    required TResult Function() resendEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? onInputUsername,
    TResult? Function(String password)? onInputPassword,
    TResult? Function(bool isVisible)? onPasswordVisibilityChanged,
    TResult? Function()? login,
    TResult? Function()? resendEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? onInputUsername,
    TResult Function(String password)? onInputPassword,
    TResult Function(bool isVisible)? onPasswordVisibilityChanged,
    TResult Function()? login,
    TResult Function()? resendEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInputUsername value) onInputUsername,
    required TResult Function(LoginInputPassword value) onInputPassword,
    required TResult Function(LoginShowPasswordChanged value)
        onPasswordVisibilityChanged,
    required TResult Function(Login value) login,
    required TResult Function(_ResendEmail value) resendEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInputUsername value)? onInputUsername,
    TResult? Function(LoginInputPassword value)? onInputPassword,
    TResult? Function(LoginShowPasswordChanged value)?
        onPasswordVisibilityChanged,
    TResult? Function(Login value)? login,
    TResult? Function(_ResendEmail value)? resendEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInputUsername value)? onInputUsername,
    TResult Function(LoginInputPassword value)? onInputPassword,
    TResult Function(LoginShowPasswordChanged value)?
        onPasswordVisibilityChanged,
    TResult Function(Login value)? login,
    TResult Function(_ResendEmail value)? resendEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginInputUsernameImplCopyWith<$Res> {
  factory _$$LoginInputUsernameImplCopyWith(_$LoginInputUsernameImpl value,
          $Res Function(_$LoginInputUsernameImpl) then) =
      __$$LoginInputUsernameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String username});
}

/// @nodoc
class __$$LoginInputUsernameImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginInputUsernameImpl>
    implements _$$LoginInputUsernameImplCopyWith<$Res> {
  __$$LoginInputUsernameImplCopyWithImpl(_$LoginInputUsernameImpl _value,
      $Res Function(_$LoginInputUsernameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
  }) {
    return _then(_$LoginInputUsernameImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginInputUsernameImpl implements LoginInputUsername {
  const _$LoginInputUsernameImpl({required this.username});

  @override
  final String username;

  @override
  String toString() {
    return 'LoginEvent.onInputUsername(username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginInputUsernameImpl &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginInputUsernameImplCopyWith<_$LoginInputUsernameImpl> get copyWith =>
      __$$LoginInputUsernameImplCopyWithImpl<_$LoginInputUsernameImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) onInputUsername,
    required TResult Function(String password) onInputPassword,
    required TResult Function(bool isVisible) onPasswordVisibilityChanged,
    required TResult Function() login,
    required TResult Function() resendEmail,
  }) {
    return onInputUsername(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? onInputUsername,
    TResult? Function(String password)? onInputPassword,
    TResult? Function(bool isVisible)? onPasswordVisibilityChanged,
    TResult? Function()? login,
    TResult? Function()? resendEmail,
  }) {
    return onInputUsername?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? onInputUsername,
    TResult Function(String password)? onInputPassword,
    TResult Function(bool isVisible)? onPasswordVisibilityChanged,
    TResult Function()? login,
    TResult Function()? resendEmail,
    required TResult orElse(),
  }) {
    if (onInputUsername != null) {
      return onInputUsername(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInputUsername value) onInputUsername,
    required TResult Function(LoginInputPassword value) onInputPassword,
    required TResult Function(LoginShowPasswordChanged value)
        onPasswordVisibilityChanged,
    required TResult Function(Login value) login,
    required TResult Function(_ResendEmail value) resendEmail,
  }) {
    return onInputUsername(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInputUsername value)? onInputUsername,
    TResult? Function(LoginInputPassword value)? onInputPassword,
    TResult? Function(LoginShowPasswordChanged value)?
        onPasswordVisibilityChanged,
    TResult? Function(Login value)? login,
    TResult? Function(_ResendEmail value)? resendEmail,
  }) {
    return onInputUsername?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInputUsername value)? onInputUsername,
    TResult Function(LoginInputPassword value)? onInputPassword,
    TResult Function(LoginShowPasswordChanged value)?
        onPasswordVisibilityChanged,
    TResult Function(Login value)? login,
    TResult Function(_ResendEmail value)? resendEmail,
    required TResult orElse(),
  }) {
    if (onInputUsername != null) {
      return onInputUsername(this);
    }
    return orElse();
  }
}

abstract class LoginInputUsername implements LoginEvent {
  const factory LoginInputUsername({required final String username}) =
      _$LoginInputUsernameImpl;

  String get username;
  @JsonKey(ignore: true)
  _$$LoginInputUsernameImplCopyWith<_$LoginInputUsernameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginInputPasswordImplCopyWith<$Res> {
  factory _$$LoginInputPasswordImplCopyWith(_$LoginInputPasswordImpl value,
          $Res Function(_$LoginInputPasswordImpl) then) =
      __$$LoginInputPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$LoginInputPasswordImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginInputPasswordImpl>
    implements _$$LoginInputPasswordImplCopyWith<$Res> {
  __$$LoginInputPasswordImplCopyWithImpl(_$LoginInputPasswordImpl _value,
      $Res Function(_$LoginInputPasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$LoginInputPasswordImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginInputPasswordImpl implements LoginInputPassword {
  const _$LoginInputPasswordImpl({required this.password});

  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.onInputPassword(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginInputPasswordImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginInputPasswordImplCopyWith<_$LoginInputPasswordImpl> get copyWith =>
      __$$LoginInputPasswordImplCopyWithImpl<_$LoginInputPasswordImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) onInputUsername,
    required TResult Function(String password) onInputPassword,
    required TResult Function(bool isVisible) onPasswordVisibilityChanged,
    required TResult Function() login,
    required TResult Function() resendEmail,
  }) {
    return onInputPassword(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? onInputUsername,
    TResult? Function(String password)? onInputPassword,
    TResult? Function(bool isVisible)? onPasswordVisibilityChanged,
    TResult? Function()? login,
    TResult? Function()? resendEmail,
  }) {
    return onInputPassword?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? onInputUsername,
    TResult Function(String password)? onInputPassword,
    TResult Function(bool isVisible)? onPasswordVisibilityChanged,
    TResult Function()? login,
    TResult Function()? resendEmail,
    required TResult orElse(),
  }) {
    if (onInputPassword != null) {
      return onInputPassword(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInputUsername value) onInputUsername,
    required TResult Function(LoginInputPassword value) onInputPassword,
    required TResult Function(LoginShowPasswordChanged value)
        onPasswordVisibilityChanged,
    required TResult Function(Login value) login,
    required TResult Function(_ResendEmail value) resendEmail,
  }) {
    return onInputPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInputUsername value)? onInputUsername,
    TResult? Function(LoginInputPassword value)? onInputPassword,
    TResult? Function(LoginShowPasswordChanged value)?
        onPasswordVisibilityChanged,
    TResult? Function(Login value)? login,
    TResult? Function(_ResendEmail value)? resendEmail,
  }) {
    return onInputPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInputUsername value)? onInputUsername,
    TResult Function(LoginInputPassword value)? onInputPassword,
    TResult Function(LoginShowPasswordChanged value)?
        onPasswordVisibilityChanged,
    TResult Function(Login value)? login,
    TResult Function(_ResendEmail value)? resendEmail,
    required TResult orElse(),
  }) {
    if (onInputPassword != null) {
      return onInputPassword(this);
    }
    return orElse();
  }
}

abstract class LoginInputPassword implements LoginEvent {
  const factory LoginInputPassword({required final String password}) =
      _$LoginInputPasswordImpl;

  String get password;
  @JsonKey(ignore: true)
  _$$LoginInputPasswordImplCopyWith<_$LoginInputPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginShowPasswordChangedImplCopyWith<$Res> {
  factory _$$LoginShowPasswordChangedImplCopyWith(
          _$LoginShowPasswordChangedImpl value,
          $Res Function(_$LoginShowPasswordChangedImpl) then) =
      __$$LoginShowPasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isVisible});
}

/// @nodoc
class __$$LoginShowPasswordChangedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginShowPasswordChangedImpl>
    implements _$$LoginShowPasswordChangedImplCopyWith<$Res> {
  __$$LoginShowPasswordChangedImplCopyWithImpl(
      _$LoginShowPasswordChangedImpl _value,
      $Res Function(_$LoginShowPasswordChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isVisible = null,
  }) {
    return _then(_$LoginShowPasswordChangedImpl(
      isVisible: null == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoginShowPasswordChangedImpl implements LoginShowPasswordChanged {
  const _$LoginShowPasswordChangedImpl({required this.isVisible});

  @override
  final bool isVisible;

  @override
  String toString() {
    return 'LoginEvent.onPasswordVisibilityChanged(isVisible: $isVisible)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginShowPasswordChangedImpl &&
            (identical(other.isVisible, isVisible) ||
                other.isVisible == isVisible));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isVisible);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginShowPasswordChangedImplCopyWith<_$LoginShowPasswordChangedImpl>
      get copyWith => __$$LoginShowPasswordChangedImplCopyWithImpl<
          _$LoginShowPasswordChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) onInputUsername,
    required TResult Function(String password) onInputPassword,
    required TResult Function(bool isVisible) onPasswordVisibilityChanged,
    required TResult Function() login,
    required TResult Function() resendEmail,
  }) {
    return onPasswordVisibilityChanged(isVisible);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? onInputUsername,
    TResult? Function(String password)? onInputPassword,
    TResult? Function(bool isVisible)? onPasswordVisibilityChanged,
    TResult? Function()? login,
    TResult? Function()? resendEmail,
  }) {
    return onPasswordVisibilityChanged?.call(isVisible);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? onInputUsername,
    TResult Function(String password)? onInputPassword,
    TResult Function(bool isVisible)? onPasswordVisibilityChanged,
    TResult Function()? login,
    TResult Function()? resendEmail,
    required TResult orElse(),
  }) {
    if (onPasswordVisibilityChanged != null) {
      return onPasswordVisibilityChanged(isVisible);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInputUsername value) onInputUsername,
    required TResult Function(LoginInputPassword value) onInputPassword,
    required TResult Function(LoginShowPasswordChanged value)
        onPasswordVisibilityChanged,
    required TResult Function(Login value) login,
    required TResult Function(_ResendEmail value) resendEmail,
  }) {
    return onPasswordVisibilityChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInputUsername value)? onInputUsername,
    TResult? Function(LoginInputPassword value)? onInputPassword,
    TResult? Function(LoginShowPasswordChanged value)?
        onPasswordVisibilityChanged,
    TResult? Function(Login value)? login,
    TResult? Function(_ResendEmail value)? resendEmail,
  }) {
    return onPasswordVisibilityChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInputUsername value)? onInputUsername,
    TResult Function(LoginInputPassword value)? onInputPassword,
    TResult Function(LoginShowPasswordChanged value)?
        onPasswordVisibilityChanged,
    TResult Function(Login value)? login,
    TResult Function(_ResendEmail value)? resendEmail,
    required TResult orElse(),
  }) {
    if (onPasswordVisibilityChanged != null) {
      return onPasswordVisibilityChanged(this);
    }
    return orElse();
  }
}

abstract class LoginShowPasswordChanged implements LoginEvent {
  const factory LoginShowPasswordChanged({required final bool isVisible}) =
      _$LoginShowPasswordChangedImpl;

  bool get isVisible;
  @JsonKey(ignore: true)
  _$$LoginShowPasswordChangedImplCopyWith<_$LoginShowPasswordChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
      _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginImpl implements Login {
  const _$LoginImpl();

  @override
  String toString() {
    return 'LoginEvent.login()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) onInputUsername,
    required TResult Function(String password) onInputPassword,
    required TResult Function(bool isVisible) onPasswordVisibilityChanged,
    required TResult Function() login,
    required TResult Function() resendEmail,
  }) {
    return login();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? onInputUsername,
    TResult? Function(String password)? onInputPassword,
    TResult? Function(bool isVisible)? onPasswordVisibilityChanged,
    TResult? Function()? login,
    TResult? Function()? resendEmail,
  }) {
    return login?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? onInputUsername,
    TResult Function(String password)? onInputPassword,
    TResult Function(bool isVisible)? onPasswordVisibilityChanged,
    TResult Function()? login,
    TResult Function()? resendEmail,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInputUsername value) onInputUsername,
    required TResult Function(LoginInputPassword value) onInputPassword,
    required TResult Function(LoginShowPasswordChanged value)
        onPasswordVisibilityChanged,
    required TResult Function(Login value) login,
    required TResult Function(_ResendEmail value) resendEmail,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInputUsername value)? onInputUsername,
    TResult? Function(LoginInputPassword value)? onInputPassword,
    TResult? Function(LoginShowPasswordChanged value)?
        onPasswordVisibilityChanged,
    TResult? Function(Login value)? login,
    TResult? Function(_ResendEmail value)? resendEmail,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInputUsername value)? onInputUsername,
    TResult Function(LoginInputPassword value)? onInputPassword,
    TResult Function(LoginShowPasswordChanged value)?
        onPasswordVisibilityChanged,
    TResult Function(Login value)? login,
    TResult Function(_ResendEmail value)? resendEmail,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class Login implements LoginEvent {
  const factory Login() = _$LoginImpl;
}

/// @nodoc
abstract class _$$ResendEmailImplCopyWith<$Res> {
  factory _$$ResendEmailImplCopyWith(
          _$ResendEmailImpl value, $Res Function(_$ResendEmailImpl) then) =
      __$$ResendEmailImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResendEmailImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$ResendEmailImpl>
    implements _$$ResendEmailImplCopyWith<$Res> {
  __$$ResendEmailImplCopyWithImpl(
      _$ResendEmailImpl _value, $Res Function(_$ResendEmailImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResendEmailImpl implements _ResendEmail {
  const _$ResendEmailImpl();

  @override
  String toString() {
    return 'LoginEvent.resendEmail()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResendEmailImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) onInputUsername,
    required TResult Function(String password) onInputPassword,
    required TResult Function(bool isVisible) onPasswordVisibilityChanged,
    required TResult Function() login,
    required TResult Function() resendEmail,
  }) {
    return resendEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? onInputUsername,
    TResult? Function(String password)? onInputPassword,
    TResult? Function(bool isVisible)? onPasswordVisibilityChanged,
    TResult? Function()? login,
    TResult? Function()? resendEmail,
  }) {
    return resendEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? onInputUsername,
    TResult Function(String password)? onInputPassword,
    TResult Function(bool isVisible)? onPasswordVisibilityChanged,
    TResult Function()? login,
    TResult Function()? resendEmail,
    required TResult orElse(),
  }) {
    if (resendEmail != null) {
      return resendEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInputUsername value) onInputUsername,
    required TResult Function(LoginInputPassword value) onInputPassword,
    required TResult Function(LoginShowPasswordChanged value)
        onPasswordVisibilityChanged,
    required TResult Function(Login value) login,
    required TResult Function(_ResendEmail value) resendEmail,
  }) {
    return resendEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInputUsername value)? onInputUsername,
    TResult? Function(LoginInputPassword value)? onInputPassword,
    TResult? Function(LoginShowPasswordChanged value)?
        onPasswordVisibilityChanged,
    TResult? Function(Login value)? login,
    TResult? Function(_ResendEmail value)? resendEmail,
  }) {
    return resendEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInputUsername value)? onInputUsername,
    TResult Function(LoginInputPassword value)? onInputPassword,
    TResult Function(LoginShowPasswordChanged value)?
        onPasswordVisibilityChanged,
    TResult Function(Login value)? login,
    TResult Function(_ResendEmail value)? resendEmail,
    required TResult orElse(),
  }) {
    if (resendEmail != null) {
      return resendEmail(this);
    }
    return orElse();
  }
}

abstract class _ResendEmail implements LoginEvent {
  const factory _ResendEmail() = _$ResendEmailImpl;
}
