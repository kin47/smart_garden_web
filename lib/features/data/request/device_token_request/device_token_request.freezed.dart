// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_token_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeviceTokenRequest _$DeviceTokenRequestFromJson(Map<String, dynamic> json) {
  return _DeviceTokenRequest.fromJson(json);
}

/// @nodoc
mixin _$DeviceTokenRequest {
  String get deviceToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceTokenRequestCopyWith<DeviceTokenRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceTokenRequestCopyWith<$Res> {
  factory $DeviceTokenRequestCopyWith(
          DeviceTokenRequest value, $Res Function(DeviceTokenRequest) then) =
      _$DeviceTokenRequestCopyWithImpl<$Res, DeviceTokenRequest>;
  @useResult
  $Res call({String deviceToken});
}

/// @nodoc
class _$DeviceTokenRequestCopyWithImpl<$Res, $Val extends DeviceTokenRequest>
    implements $DeviceTokenRequestCopyWith<$Res> {
  _$DeviceTokenRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceToken = null,
  }) {
    return _then(_value.copyWith(
      deviceToken: null == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceTokenRequestImplCopyWith<$Res>
    implements $DeviceTokenRequestCopyWith<$Res> {
  factory _$$DeviceTokenRequestImplCopyWith(_$DeviceTokenRequestImpl value,
          $Res Function(_$DeviceTokenRequestImpl) then) =
      __$$DeviceTokenRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String deviceToken});
}

/// @nodoc
class __$$DeviceTokenRequestImplCopyWithImpl<$Res>
    extends _$DeviceTokenRequestCopyWithImpl<$Res, _$DeviceTokenRequestImpl>
    implements _$$DeviceTokenRequestImplCopyWith<$Res> {
  __$$DeviceTokenRequestImplCopyWithImpl(_$DeviceTokenRequestImpl _value,
      $Res Function(_$DeviceTokenRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceToken = null,
  }) {
    return _then(_$DeviceTokenRequestImpl(
      deviceToken: null == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$DeviceTokenRequestImpl implements _DeviceTokenRequest {
  const _$DeviceTokenRequestImpl({required this.deviceToken});

  factory _$DeviceTokenRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceTokenRequestImplFromJson(json);

  @override
  final String deviceToken;

  @override
  String toString() {
    return 'DeviceTokenRequest(deviceToken: $deviceToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceTokenRequestImpl &&
            (identical(other.deviceToken, deviceToken) ||
                other.deviceToken == deviceToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, deviceToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceTokenRequestImplCopyWith<_$DeviceTokenRequestImpl> get copyWith =>
      __$$DeviceTokenRequestImplCopyWithImpl<_$DeviceTokenRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceTokenRequestImplToJson(
      this,
    );
  }
}

abstract class _DeviceTokenRequest implements DeviceTokenRequest {
  const factory _DeviceTokenRequest({required final String deviceToken}) =
      _$DeviceTokenRequestImpl;

  factory _DeviceTokenRequest.fromJson(Map<String, dynamic> json) =
      _$DeviceTokenRequestImpl.fromJson;

  @override
  String get deviceToken;
  @override
  @JsonKey(ignore: true)
  _$$DeviceTokenRequestImplCopyWith<_$DeviceTokenRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
