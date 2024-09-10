// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_bloc.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$WeatherStateCWProxy {
  WeatherState status(BaseStateStatus status);

  WeatherState message(String? message);

  WeatherState weather(WeatherEnum? weather);

  WeatherState temperature(double? temperature);

  WeatherState maxTemperature(double? maxTemperature);

  WeatherState minTemperature(double? minTemperature);

  WeatherState humidity(int? humidity);

  WeatherState sunrise(DateTime? sunrise);

  WeatherState sunset(DateTime? sunset);

  WeatherState description(String description);

  WeatherState city(String city);

  WeatherState timezone(int? timezone);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `WeatherState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// WeatherState(...).copyWith(id: 12, name: "My name")
  /// ````
  WeatherState call({
    BaseStateStatus? status,
    String? message,
    WeatherEnum? weather,
    double? temperature,
    double? maxTemperature,
    double? minTemperature,
    int? humidity,
    DateTime? sunrise,
    DateTime? sunset,
    String? description,
    String? city,
    int? timezone,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfWeatherState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfWeatherState.copyWith.fieldName(...)`
class _$WeatherStateCWProxyImpl implements _$WeatherStateCWProxy {
  const _$WeatherStateCWProxyImpl(this._value);

  final WeatherState _value;

  @override
  WeatherState status(BaseStateStatus status) => this(status: status);

  @override
  WeatherState message(String? message) => this(message: message);

  @override
  WeatherState weather(WeatherEnum? weather) => this(weather: weather);

  @override
  WeatherState temperature(double? temperature) =>
      this(temperature: temperature);

  @override
  WeatherState maxTemperature(double? maxTemperature) =>
      this(maxTemperature: maxTemperature);

  @override
  WeatherState minTemperature(double? minTemperature) =>
      this(minTemperature: minTemperature);

  @override
  WeatherState humidity(int? humidity) => this(humidity: humidity);

  @override
  WeatherState sunrise(DateTime? sunrise) => this(sunrise: sunrise);

  @override
  WeatherState sunset(DateTime? sunset) => this(sunset: sunset);

  @override
  WeatherState description(String description) =>
      this(description: description);

  @override
  WeatherState city(String city) => this(city: city);

  @override
  WeatherState timezone(int? timezone) => this(timezone: timezone);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `WeatherState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// WeatherState(...).copyWith(id: 12, name: "My name")
  /// ````
  WeatherState call({
    Object? status = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? weather = const $CopyWithPlaceholder(),
    Object? temperature = const $CopyWithPlaceholder(),
    Object? maxTemperature = const $CopyWithPlaceholder(),
    Object? minTemperature = const $CopyWithPlaceholder(),
    Object? humidity = const $CopyWithPlaceholder(),
    Object? sunrise = const $CopyWithPlaceholder(),
    Object? sunset = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? city = const $CopyWithPlaceholder(),
    Object? timezone = const $CopyWithPlaceholder(),
  }) {
    return WeatherState(
      status: status == const $CopyWithPlaceholder() || status == null
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as BaseStateStatus,
      message: message == const $CopyWithPlaceholder()
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as String?,
      weather: weather == const $CopyWithPlaceholder()
          ? _value.weather
          // ignore: cast_nullable_to_non_nullable
          : weather as WeatherEnum?,
      temperature: temperature == const $CopyWithPlaceholder()
          ? _value.temperature
          // ignore: cast_nullable_to_non_nullable
          : temperature as double?,
      maxTemperature: maxTemperature == const $CopyWithPlaceholder()
          ? _value.maxTemperature
          // ignore: cast_nullable_to_non_nullable
          : maxTemperature as double?,
      minTemperature: minTemperature == const $CopyWithPlaceholder()
          ? _value.minTemperature
          // ignore: cast_nullable_to_non_nullable
          : minTemperature as double?,
      humidity: humidity == const $CopyWithPlaceholder()
          ? _value.humidity
          // ignore: cast_nullable_to_non_nullable
          : humidity as int?,
      sunrise: sunrise == const $CopyWithPlaceholder()
          ? _value.sunrise
          // ignore: cast_nullable_to_non_nullable
          : sunrise as DateTime?,
      sunset: sunset == const $CopyWithPlaceholder()
          ? _value.sunset
          // ignore: cast_nullable_to_non_nullable
          : sunset as DateTime?,
      description:
          description == const $CopyWithPlaceholder() || description == null
              ? _value.description
              // ignore: cast_nullable_to_non_nullable
              : description as String,
      city: city == const $CopyWithPlaceholder() || city == null
          ? _value.city
          // ignore: cast_nullable_to_non_nullable
          : city as String,
      timezone: timezone == const $CopyWithPlaceholder()
          ? _value.timezone
          // ignore: cast_nullable_to_non_nullable
          : timezone as int?,
    );
  }
}

extension $WeatherStateCopyWith on WeatherState {
  /// Returns a callable class that can be used as follows: `instanceOfWeatherState.copyWith(...)` or like so:`instanceOfWeatherState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$WeatherStateCWProxy get copyWith => _$WeatherStateCWProxyImpl(this);
}
