// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diagnosis_history_bloc.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$DiagnosisHistoryStateCWProxy {
  DiagnosisHistoryState status(BaseStateStatus status);

  DiagnosisHistoryState message(String? message);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DiagnosisHistoryState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DiagnosisHistoryState(...).copyWith(id: 12, name: "My name")
  /// ````
  DiagnosisHistoryState call({
    BaseStateStatus? status,
    String? message,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfDiagnosisHistoryState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfDiagnosisHistoryState.copyWith.fieldName(...)`
class _$DiagnosisHistoryStateCWProxyImpl
    implements _$DiagnosisHistoryStateCWProxy {
  const _$DiagnosisHistoryStateCWProxyImpl(this._value);

  final DiagnosisHistoryState _value;

  @override
  DiagnosisHistoryState status(BaseStateStatus status) => this(status: status);

  @override
  DiagnosisHistoryState message(String? message) => this(message: message);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DiagnosisHistoryState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DiagnosisHistoryState(...).copyWith(id: 12, name: "My name")
  /// ````
  DiagnosisHistoryState call({
    Object? status = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
  }) {
    return DiagnosisHistoryState(
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

extension $DiagnosisHistoryStateCopyWith on DiagnosisHistoryState {
  /// Returns a callable class that can be used as follows: `instanceOfDiagnosisHistoryState.copyWith(...)` or like so:`instanceOfDiagnosisHistoryState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$DiagnosisHistoryStateCWProxy get copyWith =>
      _$DiagnosisHistoryStateCWProxyImpl(this);
}
