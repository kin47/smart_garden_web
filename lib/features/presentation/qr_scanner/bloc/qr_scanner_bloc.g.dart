// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qr_scanner_bloc.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$QrScannerStateCWProxy {
  QrScannerState status(BaseStateStatus status);

  QrScannerState message(String? message);

  QrScannerState kitId(String? kitId);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `QrScannerState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// QrScannerState(...).copyWith(id: 12, name: "My name")
  /// ````
  QrScannerState call({
    BaseStateStatus? status,
    String? message,
    String? kitId,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfQrScannerState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfQrScannerState.copyWith.fieldName(...)`
class _$QrScannerStateCWProxyImpl implements _$QrScannerStateCWProxy {
  const _$QrScannerStateCWProxyImpl(this._value);

  final QrScannerState _value;

  @override
  QrScannerState status(BaseStateStatus status) => this(status: status);

  @override
  QrScannerState message(String? message) => this(message: message);

  @override
  QrScannerState kitId(String? kitId) => this(kitId: kitId);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `QrScannerState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// QrScannerState(...).copyWith(id: 12, name: "My name")
  /// ````
  QrScannerState call({
    Object? status = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? kitId = const $CopyWithPlaceholder(),
  }) {
    return QrScannerState(
      status: status == const $CopyWithPlaceholder() || status == null
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as BaseStateStatus,
      message: message == const $CopyWithPlaceholder()
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as String?,
      kitId: kitId == const $CopyWithPlaceholder()
          ? _value.kitId
          // ignore: cast_nullable_to_non_nullable
          : kitId as String?,
    );
  }
}

extension $QrScannerStateCopyWith on QrScannerState {
  /// Returns a callable class that can be used as follows: `instanceOfQrScannerState.copyWith(...)` or like so:`instanceOfQrScannerState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$QrScannerStateCWProxy get copyWith => _$QrScannerStateCWProxyImpl(this);
}
