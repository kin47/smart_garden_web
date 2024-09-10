// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resend_email_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResendEmailRequest _$ResendEmailRequestFromJson(Map<String, dynamic> json) {
  return _ResendEmailRequest.fromJson(json);
}

/// @nodoc
mixin _$ResendEmailRequest {
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResendEmailRequestCopyWith<ResendEmailRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResendEmailRequestCopyWith<$Res> {
  factory $ResendEmailRequestCopyWith(
          ResendEmailRequest value, $Res Function(ResendEmailRequest) then) =
      _$ResendEmailRequestCopyWithImpl<$Res, ResendEmailRequest>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$ResendEmailRequestCopyWithImpl<$Res, $Val extends ResendEmailRequest>
    implements $ResendEmailRequestCopyWith<$Res> {
  _$ResendEmailRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResendEmailRequestImplCopyWith<$Res>
    implements $ResendEmailRequestCopyWith<$Res> {
  factory _$$ResendEmailRequestImplCopyWith(_$ResendEmailRequestImpl value,
          $Res Function(_$ResendEmailRequestImpl) then) =
      __$$ResendEmailRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$ResendEmailRequestImplCopyWithImpl<$Res>
    extends _$ResendEmailRequestCopyWithImpl<$Res, _$ResendEmailRequestImpl>
    implements _$$ResendEmailRequestImplCopyWith<$Res> {
  __$$ResendEmailRequestImplCopyWithImpl(_$ResendEmailRequestImpl _value,
      $Res Function(_$ResendEmailRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$ResendEmailRequestImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResendEmailRequestImpl implements _ResendEmailRequest {
  const _$ResendEmailRequestImpl({required this.email});

  factory _$ResendEmailRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResendEmailRequestImplFromJson(json);

  @override
  final String email;

  @override
  String toString() {
    return 'ResendEmailRequest(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResendEmailRequestImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResendEmailRequestImplCopyWith<_$ResendEmailRequestImpl> get copyWith =>
      __$$ResendEmailRequestImplCopyWithImpl<_$ResendEmailRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResendEmailRequestImplToJson(
      this,
    );
  }
}

abstract class _ResendEmailRequest implements ResendEmailRequest {
  const factory _ResendEmailRequest({required final String email}) =
      _$ResendEmailRequestImpl;

  factory _ResendEmailRequest.fromJson(Map<String, dynamic> json) =
      _$ResendEmailRequestImpl.fromJson;

  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$ResendEmailRequestImplCopyWith<_$ResendEmailRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
