// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kit_controller_bloc.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$KitControllerStateCWProxy {
  KitControllerState status(BaseStateStatus status);

  KitControllerState message(String? message);

  KitControllerState isLightOn(bool isLightOn);

  KitControllerState isPumpOn(bool isPumpOn);

  KitControllerState autoLight(bool autoLight);

  KitControllerState autoPump(bool autoPump);

  KitControllerState lightThreshold(int lightThreshold);

  KitControllerState pumpThreshold(int pumpThreshold);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `KitControllerState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// KitControllerState(...).copyWith(id: 12, name: "My name")
  /// ````
  KitControllerState call({
    BaseStateStatus? status,
    String? message,
    bool? isLightOn,
    bool? isPumpOn,
    bool? autoLight,
    bool? autoPump,
    int? lightThreshold,
    int? pumpThreshold,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfKitControllerState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfKitControllerState.copyWith.fieldName(...)`
class _$KitControllerStateCWProxyImpl implements _$KitControllerStateCWProxy {
  const _$KitControllerStateCWProxyImpl(this._value);

  final KitControllerState _value;

  @override
  KitControllerState status(BaseStateStatus status) => this(status: status);

  @override
  KitControllerState message(String? message) => this(message: message);

  @override
  KitControllerState isLightOn(bool isLightOn) => this(isLightOn: isLightOn);

  @override
  KitControllerState isPumpOn(bool isPumpOn) => this(isPumpOn: isPumpOn);

  @override
  KitControllerState autoLight(bool autoLight) => this(autoLight: autoLight);

  @override
  KitControllerState autoPump(bool autoPump) => this(autoPump: autoPump);

  @override
  KitControllerState lightThreshold(int lightThreshold) =>
      this(lightThreshold: lightThreshold);

  @override
  KitControllerState pumpThreshold(int pumpThreshold) =>
      this(pumpThreshold: pumpThreshold);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `KitControllerState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// KitControllerState(...).copyWith(id: 12, name: "My name")
  /// ````
  KitControllerState call({
    Object? status = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? isLightOn = const $CopyWithPlaceholder(),
    Object? isPumpOn = const $CopyWithPlaceholder(),
    Object? autoLight = const $CopyWithPlaceholder(),
    Object? autoPump = const $CopyWithPlaceholder(),
    Object? lightThreshold = const $CopyWithPlaceholder(),
    Object? pumpThreshold = const $CopyWithPlaceholder(),
  }) {
    return KitControllerState(
      status: status == const $CopyWithPlaceholder() || status == null
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as BaseStateStatus,
      message: message == const $CopyWithPlaceholder()
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as String?,
      isLightOn: isLightOn == const $CopyWithPlaceholder() || isLightOn == null
          ? _value.isLightOn
          // ignore: cast_nullable_to_non_nullable
          : isLightOn as bool,
      isPumpOn: isPumpOn == const $CopyWithPlaceholder() || isPumpOn == null
          ? _value.isPumpOn
          // ignore: cast_nullable_to_non_nullable
          : isPumpOn as bool,
      autoLight: autoLight == const $CopyWithPlaceholder() || autoLight == null
          ? _value.autoLight
          // ignore: cast_nullable_to_non_nullable
          : autoLight as bool,
      autoPump: autoPump == const $CopyWithPlaceholder() || autoPump == null
          ? _value.autoPump
          // ignore: cast_nullable_to_non_nullable
          : autoPump as bool,
      lightThreshold: lightThreshold == const $CopyWithPlaceholder() ||
              lightThreshold == null
          ? _value.lightThreshold
          // ignore: cast_nullable_to_non_nullable
          : lightThreshold as int,
      pumpThreshold:
          pumpThreshold == const $CopyWithPlaceholder() || pumpThreshold == null
              ? _value.pumpThreshold
              // ignore: cast_nullable_to_non_nullable
              : pumpThreshold as int,
    );
  }
}

extension $KitControllerStateCopyWith on KitControllerState {
  /// Returns a callable class that can be used as follows: `instanceOfKitControllerState.copyWith(...)` or like so:`instanceOfKitControllerState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$KitControllerStateCWProxy get copyWith =>
      _$KitControllerStateCWProxyImpl(this);
}
