// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diagnosis_bloc.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$DiagnosisStateCWProxy {
  DiagnosisState status(BaseStateStatus status);

  DiagnosisState message(String? message);

  DiagnosisState activeTab(DiagnosisTab activeTab);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DiagnosisState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DiagnosisState(...).copyWith(id: 12, name: "My name")
  /// ````
  DiagnosisState call({
    BaseStateStatus? status,
    String? message,
    DiagnosisTab? activeTab,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfDiagnosisState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfDiagnosisState.copyWith.fieldName(...)`
class _$DiagnosisStateCWProxyImpl implements _$DiagnosisStateCWProxy {
  const _$DiagnosisStateCWProxyImpl(this._value);

  final DiagnosisState _value;

  @override
  DiagnosisState status(BaseStateStatus status) => this(status: status);

  @override
  DiagnosisState message(String? message) => this(message: message);

  @override
  DiagnosisState activeTab(DiagnosisTab activeTab) =>
      this(activeTab: activeTab);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DiagnosisState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DiagnosisState(...).copyWith(id: 12, name: "My name")
  /// ````
  DiagnosisState call({
    Object? status = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? activeTab = const $CopyWithPlaceholder(),
  }) {
    return DiagnosisState(
      status: status == const $CopyWithPlaceholder() || status == null
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as BaseStateStatus,
      message: message == const $CopyWithPlaceholder()
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as String?,
      activeTab: activeTab == const $CopyWithPlaceholder() || activeTab == null
          ? _value.activeTab
          // ignore: cast_nullable_to_non_nullable
          : activeTab as DiagnosisTab,
    );
  }
}

extension $DiagnosisStateCopyWith on DiagnosisState {
  /// Returns a callable class that can be used as follows: `instanceOfDiagnosisState.copyWith(...)` or like so:`instanceOfDiagnosisState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$DiagnosisStateCWProxy get copyWith => _$DiagnosisStateCWProxyImpl(this);
}
