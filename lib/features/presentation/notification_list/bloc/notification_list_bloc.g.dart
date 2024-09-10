// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_list_bloc.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$NotificationListStateCWProxy {
  NotificationListState status(BaseStateStatus status);

  NotificationListState message(String? message);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `NotificationListState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// NotificationListState(...).copyWith(id: 12, name: "My name")
  /// ````
  NotificationListState call({
    BaseStateStatus? status,
    String? message,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfNotificationListState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfNotificationListState.copyWith.fieldName(...)`
class _$NotificationListStateCWProxyImpl
    implements _$NotificationListStateCWProxy {
  const _$NotificationListStateCWProxyImpl(this._value);

  final NotificationListState _value;

  @override
  NotificationListState status(BaseStateStatus status) => this(status: status);

  @override
  NotificationListState message(String? message) => this(message: message);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `NotificationListState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// NotificationListState(...).copyWith(id: 12, name: "My name")
  /// ````
  NotificationListState call({
    Object? status = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
  }) {
    return NotificationListState(
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

extension $NotificationListStateCopyWith on NotificationListState {
  /// Returns a callable class that can be used as follows: `instanceOfNotificationListState.copyWith(...)` or like so:`instanceOfNotificationListState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$NotificationListStateCWProxy get copyWith =>
      _$NotificationListStateCWProxyImpl(this);
}
