// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) onInputEmail,
    required TResult Function(String password) onInputPassword,
    required TResult Function(String phoneNumber) onInputPhoneNumber,
    required TResult Function(String name) onInputName,
    required TResult Function(bool isVisible) onPasswordVisibilityChanged,
    required TResult Function() register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? onInputEmail,
    TResult? Function(String password)? onInputPassword,
    TResult? Function(String phoneNumber)? onInputPhoneNumber,
    TResult? Function(String name)? onInputName,
    TResult? Function(bool isVisible)? onPasswordVisibilityChanged,
    TResult? Function()? register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? onInputEmail,
    TResult Function(String password)? onInputPassword,
    TResult Function(String phoneNumber)? onInputPhoneNumber,
    TResult Function(String name)? onInputName,
    TResult Function(bool isVisible)? onPasswordVisibilityChanged,
    TResult Function()? register,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterInputEmail value) onInputEmail,
    required TResult Function(RegisterInputPassword value) onInputPassword,
    required TResult Function(RegisterInputPhoneNumber value)
        onInputPhoneNumber,
    required TResult Function(RegisterInputName value) onInputName,
    required TResult Function(RegisterShowPasswordChanged value)
        onPasswordVisibilityChanged,
    required TResult Function(Register value) register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterInputEmail value)? onInputEmail,
    TResult? Function(RegisterInputPassword value)? onInputPassword,
    TResult? Function(RegisterInputPhoneNumber value)? onInputPhoneNumber,
    TResult? Function(RegisterInputName value)? onInputName,
    TResult? Function(RegisterShowPasswordChanged value)?
        onPasswordVisibilityChanged,
    TResult? Function(Register value)? register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterInputEmail value)? onInputEmail,
    TResult Function(RegisterInputPassword value)? onInputPassword,
    TResult Function(RegisterInputPhoneNumber value)? onInputPhoneNumber,
    TResult Function(RegisterInputName value)? onInputName,
    TResult Function(RegisterShowPasswordChanged value)?
        onPasswordVisibilityChanged,
    TResult Function(Register value)? register,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(
          RegisterEvent value, $Res Function(RegisterEvent) then) =
      _$RegisterEventCopyWithImpl<$Res, RegisterEvent>;
}

/// @nodoc
class _$RegisterEventCopyWithImpl<$Res, $Val extends RegisterEvent>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RegisterInputEmailImplCopyWith<$Res> {
  factory _$$RegisterInputEmailImplCopyWith(_$RegisterInputEmailImpl value,
          $Res Function(_$RegisterInputEmailImpl) then) =
      __$$RegisterInputEmailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$RegisterInputEmailImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$RegisterInputEmailImpl>
    implements _$$RegisterInputEmailImplCopyWith<$Res> {
  __$$RegisterInputEmailImplCopyWithImpl(_$RegisterInputEmailImpl _value,
      $Res Function(_$RegisterInputEmailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$RegisterInputEmailImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterInputEmailImpl implements RegisterInputEmail {
  const _$RegisterInputEmailImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'RegisterEvent.onInputEmail(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterInputEmailImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterInputEmailImplCopyWith<_$RegisterInputEmailImpl> get copyWith =>
      __$$RegisterInputEmailImplCopyWithImpl<_$RegisterInputEmailImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) onInputEmail,
    required TResult Function(String password) onInputPassword,
    required TResult Function(String phoneNumber) onInputPhoneNumber,
    required TResult Function(String name) onInputName,
    required TResult Function(bool isVisible) onPasswordVisibilityChanged,
    required TResult Function() register,
  }) {
    return onInputEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? onInputEmail,
    TResult? Function(String password)? onInputPassword,
    TResult? Function(String phoneNumber)? onInputPhoneNumber,
    TResult? Function(String name)? onInputName,
    TResult? Function(bool isVisible)? onPasswordVisibilityChanged,
    TResult? Function()? register,
  }) {
    return onInputEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? onInputEmail,
    TResult Function(String password)? onInputPassword,
    TResult Function(String phoneNumber)? onInputPhoneNumber,
    TResult Function(String name)? onInputName,
    TResult Function(bool isVisible)? onPasswordVisibilityChanged,
    TResult Function()? register,
    required TResult orElse(),
  }) {
    if (onInputEmail != null) {
      return onInputEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterInputEmail value) onInputEmail,
    required TResult Function(RegisterInputPassword value) onInputPassword,
    required TResult Function(RegisterInputPhoneNumber value)
        onInputPhoneNumber,
    required TResult Function(RegisterInputName value) onInputName,
    required TResult Function(RegisterShowPasswordChanged value)
        onPasswordVisibilityChanged,
    required TResult Function(Register value) register,
  }) {
    return onInputEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterInputEmail value)? onInputEmail,
    TResult? Function(RegisterInputPassword value)? onInputPassword,
    TResult? Function(RegisterInputPhoneNumber value)? onInputPhoneNumber,
    TResult? Function(RegisterInputName value)? onInputName,
    TResult? Function(RegisterShowPasswordChanged value)?
        onPasswordVisibilityChanged,
    TResult? Function(Register value)? register,
  }) {
    return onInputEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterInputEmail value)? onInputEmail,
    TResult Function(RegisterInputPassword value)? onInputPassword,
    TResult Function(RegisterInputPhoneNumber value)? onInputPhoneNumber,
    TResult Function(RegisterInputName value)? onInputName,
    TResult Function(RegisterShowPasswordChanged value)?
        onPasswordVisibilityChanged,
    TResult Function(Register value)? register,
    required TResult orElse(),
  }) {
    if (onInputEmail != null) {
      return onInputEmail(this);
    }
    return orElse();
  }
}

abstract class RegisterInputEmail implements RegisterEvent {
  const factory RegisterInputEmail({required final String email}) =
      _$RegisterInputEmailImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$RegisterInputEmailImplCopyWith<_$RegisterInputEmailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterInputPasswordImplCopyWith<$Res> {
  factory _$$RegisterInputPasswordImplCopyWith(
          _$RegisterInputPasswordImpl value,
          $Res Function(_$RegisterInputPasswordImpl) then) =
      __$$RegisterInputPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$RegisterInputPasswordImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$RegisterInputPasswordImpl>
    implements _$$RegisterInputPasswordImplCopyWith<$Res> {
  __$$RegisterInputPasswordImplCopyWithImpl(_$RegisterInputPasswordImpl _value,
      $Res Function(_$RegisterInputPasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$RegisterInputPasswordImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterInputPasswordImpl implements RegisterInputPassword {
  const _$RegisterInputPasswordImpl({required this.password});

  @override
  final String password;

  @override
  String toString() {
    return 'RegisterEvent.onInputPassword(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterInputPasswordImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterInputPasswordImplCopyWith<_$RegisterInputPasswordImpl>
      get copyWith => __$$RegisterInputPasswordImplCopyWithImpl<
          _$RegisterInputPasswordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) onInputEmail,
    required TResult Function(String password) onInputPassword,
    required TResult Function(String phoneNumber) onInputPhoneNumber,
    required TResult Function(String name) onInputName,
    required TResult Function(bool isVisible) onPasswordVisibilityChanged,
    required TResult Function() register,
  }) {
    return onInputPassword(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? onInputEmail,
    TResult? Function(String password)? onInputPassword,
    TResult? Function(String phoneNumber)? onInputPhoneNumber,
    TResult? Function(String name)? onInputName,
    TResult? Function(bool isVisible)? onPasswordVisibilityChanged,
    TResult? Function()? register,
  }) {
    return onInputPassword?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? onInputEmail,
    TResult Function(String password)? onInputPassword,
    TResult Function(String phoneNumber)? onInputPhoneNumber,
    TResult Function(String name)? onInputName,
    TResult Function(bool isVisible)? onPasswordVisibilityChanged,
    TResult Function()? register,
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
    required TResult Function(RegisterInputEmail value) onInputEmail,
    required TResult Function(RegisterInputPassword value) onInputPassword,
    required TResult Function(RegisterInputPhoneNumber value)
        onInputPhoneNumber,
    required TResult Function(RegisterInputName value) onInputName,
    required TResult Function(RegisterShowPasswordChanged value)
        onPasswordVisibilityChanged,
    required TResult Function(Register value) register,
  }) {
    return onInputPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterInputEmail value)? onInputEmail,
    TResult? Function(RegisterInputPassword value)? onInputPassword,
    TResult? Function(RegisterInputPhoneNumber value)? onInputPhoneNumber,
    TResult? Function(RegisterInputName value)? onInputName,
    TResult? Function(RegisterShowPasswordChanged value)?
        onPasswordVisibilityChanged,
    TResult? Function(Register value)? register,
  }) {
    return onInputPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterInputEmail value)? onInputEmail,
    TResult Function(RegisterInputPassword value)? onInputPassword,
    TResult Function(RegisterInputPhoneNumber value)? onInputPhoneNumber,
    TResult Function(RegisterInputName value)? onInputName,
    TResult Function(RegisterShowPasswordChanged value)?
        onPasswordVisibilityChanged,
    TResult Function(Register value)? register,
    required TResult orElse(),
  }) {
    if (onInputPassword != null) {
      return onInputPassword(this);
    }
    return orElse();
  }
}

abstract class RegisterInputPassword implements RegisterEvent {
  const factory RegisterInputPassword({required final String password}) =
      _$RegisterInputPasswordImpl;

  String get password;
  @JsonKey(ignore: true)
  _$$RegisterInputPasswordImplCopyWith<_$RegisterInputPasswordImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterInputPhoneNumberImplCopyWith<$Res> {
  factory _$$RegisterInputPhoneNumberImplCopyWith(
          _$RegisterInputPhoneNumberImpl value,
          $Res Function(_$RegisterInputPhoneNumberImpl) then) =
      __$$RegisterInputPhoneNumberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$RegisterInputPhoneNumberImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$RegisterInputPhoneNumberImpl>
    implements _$$RegisterInputPhoneNumberImplCopyWith<$Res> {
  __$$RegisterInputPhoneNumberImplCopyWithImpl(
      _$RegisterInputPhoneNumberImpl _value,
      $Res Function(_$RegisterInputPhoneNumberImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$RegisterInputPhoneNumberImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterInputPhoneNumberImpl implements RegisterInputPhoneNumber {
  const _$RegisterInputPhoneNumberImpl({required this.phoneNumber});

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'RegisterEvent.onInputPhoneNumber(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterInputPhoneNumberImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterInputPhoneNumberImplCopyWith<_$RegisterInputPhoneNumberImpl>
      get copyWith => __$$RegisterInputPhoneNumberImplCopyWithImpl<
          _$RegisterInputPhoneNumberImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) onInputEmail,
    required TResult Function(String password) onInputPassword,
    required TResult Function(String phoneNumber) onInputPhoneNumber,
    required TResult Function(String name) onInputName,
    required TResult Function(bool isVisible) onPasswordVisibilityChanged,
    required TResult Function() register,
  }) {
    return onInputPhoneNumber(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? onInputEmail,
    TResult? Function(String password)? onInputPassword,
    TResult? Function(String phoneNumber)? onInputPhoneNumber,
    TResult? Function(String name)? onInputName,
    TResult? Function(bool isVisible)? onPasswordVisibilityChanged,
    TResult? Function()? register,
  }) {
    return onInputPhoneNumber?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? onInputEmail,
    TResult Function(String password)? onInputPassword,
    TResult Function(String phoneNumber)? onInputPhoneNumber,
    TResult Function(String name)? onInputName,
    TResult Function(bool isVisible)? onPasswordVisibilityChanged,
    TResult Function()? register,
    required TResult orElse(),
  }) {
    if (onInputPhoneNumber != null) {
      return onInputPhoneNumber(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterInputEmail value) onInputEmail,
    required TResult Function(RegisterInputPassword value) onInputPassword,
    required TResult Function(RegisterInputPhoneNumber value)
        onInputPhoneNumber,
    required TResult Function(RegisterInputName value) onInputName,
    required TResult Function(RegisterShowPasswordChanged value)
        onPasswordVisibilityChanged,
    required TResult Function(Register value) register,
  }) {
    return onInputPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterInputEmail value)? onInputEmail,
    TResult? Function(RegisterInputPassword value)? onInputPassword,
    TResult? Function(RegisterInputPhoneNumber value)? onInputPhoneNumber,
    TResult? Function(RegisterInputName value)? onInputName,
    TResult? Function(RegisterShowPasswordChanged value)?
        onPasswordVisibilityChanged,
    TResult? Function(Register value)? register,
  }) {
    return onInputPhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterInputEmail value)? onInputEmail,
    TResult Function(RegisterInputPassword value)? onInputPassword,
    TResult Function(RegisterInputPhoneNumber value)? onInputPhoneNumber,
    TResult Function(RegisterInputName value)? onInputName,
    TResult Function(RegisterShowPasswordChanged value)?
        onPasswordVisibilityChanged,
    TResult Function(Register value)? register,
    required TResult orElse(),
  }) {
    if (onInputPhoneNumber != null) {
      return onInputPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class RegisterInputPhoneNumber implements RegisterEvent {
  const factory RegisterInputPhoneNumber({required final String phoneNumber}) =
      _$RegisterInputPhoneNumberImpl;

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$RegisterInputPhoneNumberImplCopyWith<_$RegisterInputPhoneNumberImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterInputNameImplCopyWith<$Res> {
  factory _$$RegisterInputNameImplCopyWith(_$RegisterInputNameImpl value,
          $Res Function(_$RegisterInputNameImpl) then) =
      __$$RegisterInputNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$RegisterInputNameImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$RegisterInputNameImpl>
    implements _$$RegisterInputNameImplCopyWith<$Res> {
  __$$RegisterInputNameImplCopyWithImpl(_$RegisterInputNameImpl _value,
      $Res Function(_$RegisterInputNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$RegisterInputNameImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterInputNameImpl implements RegisterInputName {
  const _$RegisterInputNameImpl({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'RegisterEvent.onInputName(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterInputNameImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterInputNameImplCopyWith<_$RegisterInputNameImpl> get copyWith =>
      __$$RegisterInputNameImplCopyWithImpl<_$RegisterInputNameImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) onInputEmail,
    required TResult Function(String password) onInputPassword,
    required TResult Function(String phoneNumber) onInputPhoneNumber,
    required TResult Function(String name) onInputName,
    required TResult Function(bool isVisible) onPasswordVisibilityChanged,
    required TResult Function() register,
  }) {
    return onInputName(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? onInputEmail,
    TResult? Function(String password)? onInputPassword,
    TResult? Function(String phoneNumber)? onInputPhoneNumber,
    TResult? Function(String name)? onInputName,
    TResult? Function(bool isVisible)? onPasswordVisibilityChanged,
    TResult? Function()? register,
  }) {
    return onInputName?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? onInputEmail,
    TResult Function(String password)? onInputPassword,
    TResult Function(String phoneNumber)? onInputPhoneNumber,
    TResult Function(String name)? onInputName,
    TResult Function(bool isVisible)? onPasswordVisibilityChanged,
    TResult Function()? register,
    required TResult orElse(),
  }) {
    if (onInputName != null) {
      return onInputName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterInputEmail value) onInputEmail,
    required TResult Function(RegisterInputPassword value) onInputPassword,
    required TResult Function(RegisterInputPhoneNumber value)
        onInputPhoneNumber,
    required TResult Function(RegisterInputName value) onInputName,
    required TResult Function(RegisterShowPasswordChanged value)
        onPasswordVisibilityChanged,
    required TResult Function(Register value) register,
  }) {
    return onInputName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterInputEmail value)? onInputEmail,
    TResult? Function(RegisterInputPassword value)? onInputPassword,
    TResult? Function(RegisterInputPhoneNumber value)? onInputPhoneNumber,
    TResult? Function(RegisterInputName value)? onInputName,
    TResult? Function(RegisterShowPasswordChanged value)?
        onPasswordVisibilityChanged,
    TResult? Function(Register value)? register,
  }) {
    return onInputName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterInputEmail value)? onInputEmail,
    TResult Function(RegisterInputPassword value)? onInputPassword,
    TResult Function(RegisterInputPhoneNumber value)? onInputPhoneNumber,
    TResult Function(RegisterInputName value)? onInputName,
    TResult Function(RegisterShowPasswordChanged value)?
        onPasswordVisibilityChanged,
    TResult Function(Register value)? register,
    required TResult orElse(),
  }) {
    if (onInputName != null) {
      return onInputName(this);
    }
    return orElse();
  }
}

abstract class RegisterInputName implements RegisterEvent {
  const factory RegisterInputName({required final String name}) =
      _$RegisterInputNameImpl;

  String get name;
  @JsonKey(ignore: true)
  _$$RegisterInputNameImplCopyWith<_$RegisterInputNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterShowPasswordChangedImplCopyWith<$Res> {
  factory _$$RegisterShowPasswordChangedImplCopyWith(
          _$RegisterShowPasswordChangedImpl value,
          $Res Function(_$RegisterShowPasswordChangedImpl) then) =
      __$$RegisterShowPasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isVisible});
}

/// @nodoc
class __$$RegisterShowPasswordChangedImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$RegisterShowPasswordChangedImpl>
    implements _$$RegisterShowPasswordChangedImplCopyWith<$Res> {
  __$$RegisterShowPasswordChangedImplCopyWithImpl(
      _$RegisterShowPasswordChangedImpl _value,
      $Res Function(_$RegisterShowPasswordChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isVisible = null,
  }) {
    return _then(_$RegisterShowPasswordChangedImpl(
      isVisible: null == isVisible
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RegisterShowPasswordChangedImpl implements RegisterShowPasswordChanged {
  const _$RegisterShowPasswordChangedImpl({required this.isVisible});

  @override
  final bool isVisible;

  @override
  String toString() {
    return 'RegisterEvent.onPasswordVisibilityChanged(isVisible: $isVisible)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterShowPasswordChangedImpl &&
            (identical(other.isVisible, isVisible) ||
                other.isVisible == isVisible));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isVisible);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterShowPasswordChangedImplCopyWith<_$RegisterShowPasswordChangedImpl>
      get copyWith => __$$RegisterShowPasswordChangedImplCopyWithImpl<
          _$RegisterShowPasswordChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) onInputEmail,
    required TResult Function(String password) onInputPassword,
    required TResult Function(String phoneNumber) onInputPhoneNumber,
    required TResult Function(String name) onInputName,
    required TResult Function(bool isVisible) onPasswordVisibilityChanged,
    required TResult Function() register,
  }) {
    return onPasswordVisibilityChanged(isVisible);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? onInputEmail,
    TResult? Function(String password)? onInputPassword,
    TResult? Function(String phoneNumber)? onInputPhoneNumber,
    TResult? Function(String name)? onInputName,
    TResult? Function(bool isVisible)? onPasswordVisibilityChanged,
    TResult? Function()? register,
  }) {
    return onPasswordVisibilityChanged?.call(isVisible);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? onInputEmail,
    TResult Function(String password)? onInputPassword,
    TResult Function(String phoneNumber)? onInputPhoneNumber,
    TResult Function(String name)? onInputName,
    TResult Function(bool isVisible)? onPasswordVisibilityChanged,
    TResult Function()? register,
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
    required TResult Function(RegisterInputEmail value) onInputEmail,
    required TResult Function(RegisterInputPassword value) onInputPassword,
    required TResult Function(RegisterInputPhoneNumber value)
        onInputPhoneNumber,
    required TResult Function(RegisterInputName value) onInputName,
    required TResult Function(RegisterShowPasswordChanged value)
        onPasswordVisibilityChanged,
    required TResult Function(Register value) register,
  }) {
    return onPasswordVisibilityChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterInputEmail value)? onInputEmail,
    TResult? Function(RegisterInputPassword value)? onInputPassword,
    TResult? Function(RegisterInputPhoneNumber value)? onInputPhoneNumber,
    TResult? Function(RegisterInputName value)? onInputName,
    TResult? Function(RegisterShowPasswordChanged value)?
        onPasswordVisibilityChanged,
    TResult? Function(Register value)? register,
  }) {
    return onPasswordVisibilityChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterInputEmail value)? onInputEmail,
    TResult Function(RegisterInputPassword value)? onInputPassword,
    TResult Function(RegisterInputPhoneNumber value)? onInputPhoneNumber,
    TResult Function(RegisterInputName value)? onInputName,
    TResult Function(RegisterShowPasswordChanged value)?
        onPasswordVisibilityChanged,
    TResult Function(Register value)? register,
    required TResult orElse(),
  }) {
    if (onPasswordVisibilityChanged != null) {
      return onPasswordVisibilityChanged(this);
    }
    return orElse();
  }
}

abstract class RegisterShowPasswordChanged implements RegisterEvent {
  const factory RegisterShowPasswordChanged({required final bool isVisible}) =
      _$RegisterShowPasswordChangedImpl;

  bool get isVisible;
  @JsonKey(ignore: true)
  _$$RegisterShowPasswordChangedImplCopyWith<_$RegisterShowPasswordChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterImplCopyWith<$Res> {
  factory _$$RegisterImplCopyWith(
          _$RegisterImpl value, $Res Function(_$RegisterImpl) then) =
      __$$RegisterImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$RegisterImpl>
    implements _$$RegisterImplCopyWith<$Res> {
  __$$RegisterImplCopyWithImpl(
      _$RegisterImpl _value, $Res Function(_$RegisterImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterImpl implements Register {
  const _$RegisterImpl();

  @override
  String toString() {
    return 'RegisterEvent.register()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegisterImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) onInputEmail,
    required TResult Function(String password) onInputPassword,
    required TResult Function(String phoneNumber) onInputPhoneNumber,
    required TResult Function(String name) onInputName,
    required TResult Function(bool isVisible) onPasswordVisibilityChanged,
    required TResult Function() register,
  }) {
    return register();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? onInputEmail,
    TResult? Function(String password)? onInputPassword,
    TResult? Function(String phoneNumber)? onInputPhoneNumber,
    TResult? Function(String name)? onInputName,
    TResult? Function(bool isVisible)? onPasswordVisibilityChanged,
    TResult? Function()? register,
  }) {
    return register?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? onInputEmail,
    TResult Function(String password)? onInputPassword,
    TResult Function(String phoneNumber)? onInputPhoneNumber,
    TResult Function(String name)? onInputName,
    TResult Function(bool isVisible)? onPasswordVisibilityChanged,
    TResult Function()? register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterInputEmail value) onInputEmail,
    required TResult Function(RegisterInputPassword value) onInputPassword,
    required TResult Function(RegisterInputPhoneNumber value)
        onInputPhoneNumber,
    required TResult Function(RegisterInputName value) onInputName,
    required TResult Function(RegisterShowPasswordChanged value)
        onPasswordVisibilityChanged,
    required TResult Function(Register value) register,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterInputEmail value)? onInputEmail,
    TResult? Function(RegisterInputPassword value)? onInputPassword,
    TResult? Function(RegisterInputPhoneNumber value)? onInputPhoneNumber,
    TResult? Function(RegisterInputName value)? onInputName,
    TResult? Function(RegisterShowPasswordChanged value)?
        onPasswordVisibilityChanged,
    TResult? Function(Register value)? register,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterInputEmail value)? onInputEmail,
    TResult Function(RegisterInputPassword value)? onInputPassword,
    TResult Function(RegisterInputPhoneNumber value)? onInputPhoneNumber,
    TResult Function(RegisterInputName value)? onInputName,
    TResult Function(RegisterShowPasswordChanged value)?
        onPasswordVisibilityChanged,
    TResult Function(Register value)? register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class Register implements RegisterEvent {
  const factory Register() = _$RegisterImpl;
}
