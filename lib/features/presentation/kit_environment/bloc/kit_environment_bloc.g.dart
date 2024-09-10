// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kit_environment_bloc.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$KitEnvironmentStateCWProxy {
  KitEnvironmentState status(BaseStateStatus status);

  KitEnvironmentState message(String? message);

  KitEnvironmentState temperature(double temperature);

  KitEnvironmentState humidity(double humidity);

  KitEnvironmentState light(double light);

  KitEnvironmentState soilMoisture(double soilMoisture);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `KitEnvironmentState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// KitEnvironmentState(...).copyWith(id: 12, name: "My name")
  /// ````
  KitEnvironmentState call({
    BaseStateStatus? status,
    String? message,
    double? temperature,
    double? humidity,
    double? light,
    double? soilMoisture,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfKitEnvironmentState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfKitEnvironmentState.copyWith.fieldName(...)`
class _$KitEnvironmentStateCWProxyImpl implements _$KitEnvironmentStateCWProxy {
  const _$KitEnvironmentStateCWProxyImpl(this._value);

  final KitEnvironmentState _value;

  @override
  KitEnvironmentState status(BaseStateStatus status) => this(status: status);

  @override
  KitEnvironmentState message(String? message) => this(message: message);

  @override
  KitEnvironmentState temperature(double temperature) =>
      this(temperature: temperature);

  @override
  KitEnvironmentState humidity(double humidity) => this(humidity: humidity);

  @override
  KitEnvironmentState light(double light) => this(light: light);

  @override
  KitEnvironmentState soilMoisture(double soilMoisture) =>
      this(soilMoisture: soilMoisture);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `KitEnvironmentState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// KitEnvironmentState(...).copyWith(id: 12, name: "My name")
  /// ````
  KitEnvironmentState call({
    Object? status = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? temperature = const $CopyWithPlaceholder(),
    Object? humidity = const $CopyWithPlaceholder(),
    Object? light = const $CopyWithPlaceholder(),
    Object? soilMoisture = const $CopyWithPlaceholder(),
  }) {
    return KitEnvironmentState(
      status: status == const $CopyWithPlaceholder() || status == null
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as BaseStateStatus,
      message: message == const $CopyWithPlaceholder()
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as String?,
      temperature:
          temperature == const $CopyWithPlaceholder() || temperature == null
              ? _value.temperature
              // ignore: cast_nullable_to_non_nullable
              : temperature as double,
      humidity: humidity == const $CopyWithPlaceholder() || humidity == null
          ? _value.humidity
          // ignore: cast_nullable_to_non_nullable
          : humidity as double,
      light: light == const $CopyWithPlaceholder() || light == null
          ? _value.light
          // ignore: cast_nullable_to_non_nullable
          : light as double,
      soilMoisture:
          soilMoisture == const $CopyWithPlaceholder() || soilMoisture == null
              ? _value.soilMoisture
              // ignore: cast_nullable_to_non_nullable
              : soilMoisture as double,
    );
  }
}

extension $KitEnvironmentStateCopyWith on KitEnvironmentState {
  /// Returns a callable class that can be used as follows: `instanceOfKitEnvironmentState.copyWith(...)` or like so:`instanceOfKitEnvironmentState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$KitEnvironmentStateCWProxy get copyWith =>
      _$KitEnvironmentStateCWProxyImpl(this);
}
