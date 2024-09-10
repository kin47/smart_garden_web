// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_kit_bloc.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MyKitStateCWProxy {
  MyKitState status(BaseStateStatus status);

  MyKitState message(String? message);

  MyKitState currentTab(MyKitTab currentTab);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MyKitState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MyKitState(...).copyWith(id: 12, name: "My name")
  /// ````
  MyKitState call({
    BaseStateStatus? status,
    String? message,
    MyKitTab? currentTab,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMyKitState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMyKitState.copyWith.fieldName(...)`
class _$MyKitStateCWProxyImpl implements _$MyKitStateCWProxy {
  const _$MyKitStateCWProxyImpl(this._value);

  final MyKitState _value;

  @override
  MyKitState status(BaseStateStatus status) => this(status: status);

  @override
  MyKitState message(String? message) => this(message: message);

  @override
  MyKitState currentTab(MyKitTab currentTab) => this(currentTab: currentTab);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MyKitState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MyKitState(...).copyWith(id: 12, name: "My name")
  /// ````
  MyKitState call({
    Object? status = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? currentTab = const $CopyWithPlaceholder(),
  }) {
    return MyKitState(
      status: status == const $CopyWithPlaceholder() || status == null
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as BaseStateStatus,
      message: message == const $CopyWithPlaceholder()
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as String?,
      currentTab:
          currentTab == const $CopyWithPlaceholder() || currentTab == null
              ? _value.currentTab
              // ignore: cast_nullable_to_non_nullable
              : currentTab as MyKitTab,
    );
  }
}

extension $MyKitStateCopyWith on MyKitState {
  /// Returns a callable class that can be used as follows: `instanceOfMyKitState.copyWith(...)` or like so:`instanceOfMyKitState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MyKitStateCWProxy get copyWith => _$MyKitStateCWProxyImpl(this);
}
