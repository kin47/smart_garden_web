// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherRequestImpl _$$WeatherRequestImplFromJson(Map<String, dynamic> json) =>
    _$WeatherRequestImpl(
      lat: (json['lat'] as num).toDouble(),
      lon: (json['lon'] as num).toDouble(),
      appid: json['appid'] as String,
      lang: json['lang'] as String,
    );

Map<String, dynamic> _$$WeatherRequestImplToJson(
        _$WeatherRequestImpl instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
      'appid': instance.appid,
      'lang': instance.lang,
    };
