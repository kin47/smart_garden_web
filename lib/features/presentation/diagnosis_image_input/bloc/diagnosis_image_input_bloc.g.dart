// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diagnosis_image_input_bloc.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$DiagnosisImageInputStateCWProxy {
  DiagnosisImageInputState status(BaseStateStatus status);

  DiagnosisImageInputState message(String? message);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DiagnosisImageInputState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DiagnosisImageInputState(...).copyWith(id: 12, name: "My name")
  /// ````
  DiagnosisImageInputState call({
    BaseStateStatus? status,
    String? message,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfDiagnosisImageInputState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfDiagnosisImageInputState.copyWith.fieldName(...)`
class _$DiagnosisImageInputStateCWProxyImpl
    implements _$DiagnosisImageInputStateCWProxy {
  const _$DiagnosisImageInputStateCWProxyImpl(this._value);

  final DiagnosisImageInputState _value;

  @override
  DiagnosisImageInputState status(BaseStateStatus status) =>
      this(status: status);

  @override
  DiagnosisImageInputState message(String? message) => this(message: message);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DiagnosisImageInputState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DiagnosisImageInputState(...).copyWith(id: 12, name: "My name")
  /// ````
  DiagnosisImageInputState call({
    Object? status = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
  }) {
    return DiagnosisImageInputState(
      status: status == const $CopyWithPlaceholder() || status == null
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as BaseStateStatus,
      message: message == const $CopyWithPlaceholder()
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as String?,
    );
  }
}

extension $DiagnosisImageInputStateCopyWith on DiagnosisImageInputState {
  /// Returns a callable class that can be used as follows: `instanceOfDiagnosisImageInputState.copyWith(...)` or like so:`instanceOfDiagnosisImageInputState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$DiagnosisImageInputStateCWProxy get copyWith =>
      _$DiagnosisImageInputStateCWProxyImpl(this);
}
