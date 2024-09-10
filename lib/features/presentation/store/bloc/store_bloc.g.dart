// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_bloc.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$StoreStateCWProxy {
  StoreState status(BaseStateStatus status);

  StoreState message(String? message);

  StoreState selectedStore(StoreEntity? selectedStore);

  StoreState storeList(List<StoreEntity> storeList);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `StoreState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// StoreState(...).copyWith(id: 12, name: "My name")
  /// ````
  StoreState call({
    BaseStateStatus? status,
    String? message,
    StoreEntity? selectedStore,
    List<StoreEntity>? storeList,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfStoreState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfStoreState.copyWith.fieldName(...)`
class _$StoreStateCWProxyImpl implements _$StoreStateCWProxy {
  const _$StoreStateCWProxyImpl(this._value);

  final StoreState _value;

  @override
  StoreState status(BaseStateStatus status) => this(status: status);

  @override
  StoreState message(String? message) => this(message: message);

  @override
  StoreState selectedStore(StoreEntity? selectedStore) =>
      this(selectedStore: selectedStore);

  @override
  StoreState storeList(List<StoreEntity> storeList) =>
      this(storeList: storeList);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `StoreState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// StoreState(...).copyWith(id: 12, name: "My name")
  /// ````
  StoreState call({
    Object? status = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? selectedStore = const $CopyWithPlaceholder(),
    Object? storeList = const $CopyWithPlaceholder(),
  }) {
    return StoreState(
      status: status == const $CopyWithPlaceholder() || status == null
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as BaseStateStatus,
      message: message == const $CopyWithPlaceholder()
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as String?,
      selectedStore: selectedStore == const $CopyWithPlaceholder()
          ? _value.selectedStore
          // ignore: cast_nullable_to_non_nullable
          : selectedStore as StoreEntity?,
      storeList: storeList == const $CopyWithPlaceholder() || storeList == null
          ? _value.storeList
          // ignore: cast_nullable_to_non_nullable
          : storeList as List<StoreEntity>,
    );
  }
}

extension $StoreStateCopyWith on StoreState {
  /// Returns a callable class that can be used as follows: `instanceOfStoreState.copyWith(...)` or like so:`instanceOfStoreState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$StoreStateCWProxy get copyWith => _$StoreStateCWProxyImpl(this);
}
