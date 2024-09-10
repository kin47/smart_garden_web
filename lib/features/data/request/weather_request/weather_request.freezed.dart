// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeatherRequest _$WeatherRequestFromJson(Map<String, dynamic> json) {
  return _WeatherRequest.fromJson(json);
}

/// @nodoc
mixin _$WeatherRequest {
  double get lat => throw _privateConstructorUsedError;
  double get lon => throw _privateConstructorUsedError;
  String get appid => throw _privateConstructorUsedError;
  String get lang => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherRequestCopyWith<WeatherRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherRequestCopyWith<$Res> {
  factory $WeatherRequestCopyWith(
          WeatherRequest value, $Res Function(WeatherRequest) then) =
      _$WeatherRequestCopyWithImpl<$Res, WeatherRequest>;
  @useResult
  $Res call({double lat, double lon, String appid, String lang});
}

/// @nodoc
class _$WeatherRequestCopyWithImpl<$Res, $Val extends WeatherRequest>
    implements $WeatherRequestCopyWith<$Res> {
  _$WeatherRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lon = null,
    Object? appid = null,
    Object? lang = null,
  }) {
    return _then(_value.copyWith(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      appid: null == appid
          ? _value.appid
          : appid // ignore: cast_nullable_to_non_nullable
              as String,
      lang: null == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherRequestImplCopyWith<$Res>
    implements $WeatherRequestCopyWith<$Res> {
  factory _$$WeatherRequestImplCopyWith(_$WeatherRequestImpl value,
          $Res Function(_$WeatherRequestImpl) then) =
      __$$WeatherRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double lat, double lon, String appid, String lang});
}

/// @nodoc
class __$$WeatherRequestImplCopyWithImpl<$Res>
    extends _$WeatherRequestCopyWithImpl<$Res, _$WeatherRequestImpl>
    implements _$$WeatherRequestImplCopyWith<$Res> {
  __$$WeatherRequestImplCopyWithImpl(
      _$WeatherRequestImpl _value, $Res Function(_$WeatherRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lon = null,
    Object? appid = null,
    Object? lang = null,
  }) {
    return _then(_$WeatherRequestImpl(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      appid: null == appid
          ? _value.appid
          : appid // ignore: cast_nullable_to_non_nullable
              as String,
      lang: null == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherRequestImpl implements _WeatherRequest {
  const _$WeatherRequestImpl(
      {required this.lat,
      required this.lon,
      required this.appid,
      required this.lang});

  factory _$WeatherRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherRequestImplFromJson(json);

  @override
  final double lat;
  @override
  final double lon;
  @override
  final String appid;
  @override
  final String lang;

  @override
  String toString() {
    return 'WeatherRequest(lat: $lat, lon: $lon, appid: $appid, lang: $lang)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherRequestImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.appid, appid) || other.appid == appid) &&
            (identical(other.lang, lang) || other.lang == lang));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lon, appid, lang);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherRequestImplCopyWith<_$WeatherRequestImpl> get copyWith =>
      __$$WeatherRequestImplCopyWithImpl<_$WeatherRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherRequestImplToJson(
      this,
    );
  }
}

abstract class _WeatherRequest implements WeatherRequest {
  const factory _WeatherRequest(
      {required final double lat,
      required final double lon,
      required final String appid,
      required final String lang}) = _$WeatherRequestImpl;

  factory _WeatherRequest.fromJson(Map<String, dynamic> json) =
      _$WeatherRequestImpl.fromJson;

  @override
  double get lat;
  @override
  double get lon;
  @override
  String get appid;
  @override
  String get lang;
  @override
  @JsonKey(ignore: true)
  _$$WeatherRequestImplCopyWith<_$WeatherRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
