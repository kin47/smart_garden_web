// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StoreEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageKey) getData,
    required TResult Function(StoreEntity store) onChooseStore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageKey)? getData,
    TResult? Function(StoreEntity store)? onChooseStore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageKey)? getData,
    TResult Function(StoreEntity store)? onChooseStore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetData value) getData,
    required TResult Function(_OnChooseStore value) onChooseStore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetData value)? getData,
    TResult? Function(_OnChooseStore value)? onChooseStore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetData value)? getData,
    TResult Function(_OnChooseStore value)? onChooseStore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreEventCopyWith<$Res> {
  factory $StoreEventCopyWith(
          StoreEvent value, $Res Function(StoreEvent) then) =
      _$StoreEventCopyWithImpl<$Res, StoreEvent>;
}

/// @nodoc
class _$StoreEventCopyWithImpl<$Res, $Val extends StoreEvent>
    implements $StoreEventCopyWith<$Res> {
  _$StoreEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetDataImplCopyWith<$Res> {
  factory _$$GetDataImplCopyWith(
          _$GetDataImpl value, $Res Function(_$GetDataImpl) then) =
      __$$GetDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int pageKey});
}

/// @nodoc
class __$$GetDataImplCopyWithImpl<$Res>
    extends _$StoreEventCopyWithImpl<$Res, _$GetDataImpl>
    implements _$$GetDataImplCopyWith<$Res> {
  __$$GetDataImplCopyWithImpl(
      _$GetDataImpl _value, $Res Function(_$GetDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageKey = null,
  }) {
    return _then(_$GetDataImpl(
      pageKey: null == pageKey
          ? _value.pageKey
          : pageKey // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetDataImpl implements _GetData {
  const _$GetDataImpl({required this.pageKey});

  @override
  final int pageKey;

  @override
  String toString() {
    return 'StoreEvent.getData(pageKey: $pageKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDataImpl &&
            (identical(other.pageKey, pageKey) || other.pageKey == pageKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDataImplCopyWith<_$GetDataImpl> get copyWith =>
      __$$GetDataImplCopyWithImpl<_$GetDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageKey) getData,
    required TResult Function(StoreEntity store) onChooseStore,
  }) {
    return getData(pageKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageKey)? getData,
    TResult? Function(StoreEntity store)? onChooseStore,
  }) {
    return getData?.call(pageKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageKey)? getData,
    TResult Function(StoreEntity store)? onChooseStore,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(pageKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetData value) getData,
    required TResult Function(_OnChooseStore value) onChooseStore,
  }) {
    return getData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetData value)? getData,
    TResult? Function(_OnChooseStore value)? onChooseStore,
  }) {
    return getData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetData value)? getData,
    TResult Function(_OnChooseStore value)? onChooseStore,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class _GetData implements StoreEvent {
  const factory _GetData({required final int pageKey}) = _$GetDataImpl;

  int get pageKey;
  @JsonKey(ignore: true)
  _$$GetDataImplCopyWith<_$GetDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnChooseStoreImplCopyWith<$Res> {
  factory _$$OnChooseStoreImplCopyWith(
          _$OnChooseStoreImpl value, $Res Function(_$OnChooseStoreImpl) then) =
      __$$OnChooseStoreImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StoreEntity store});
}

/// @nodoc
class __$$OnChooseStoreImplCopyWithImpl<$Res>
    extends _$StoreEventCopyWithImpl<$Res, _$OnChooseStoreImpl>
    implements _$$OnChooseStoreImplCopyWith<$Res> {
  __$$OnChooseStoreImplCopyWithImpl(
      _$OnChooseStoreImpl _value, $Res Function(_$OnChooseStoreImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? store = null,
  }) {
    return _then(_$OnChooseStoreImpl(
      store: null == store
          ? _value.store
          : store // ignore: cast_nullable_to_non_nullable
              as StoreEntity,
    ));
  }
}

/// @nodoc

class _$OnChooseStoreImpl implements _OnChooseStore {
  const _$OnChooseStoreImpl({required this.store});

  @override
  final StoreEntity store;

  @override
  String toString() {
    return 'StoreEvent.onChooseStore(store: $store)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnChooseStoreImpl &&
            (identical(other.store, store) || other.store == store));
  }

  @override
  int get hashCode => Object.hash(runtimeType, store);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnChooseStoreImplCopyWith<_$OnChooseStoreImpl> get copyWith =>
      __$$OnChooseStoreImplCopyWithImpl<_$OnChooseStoreImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageKey) getData,
    required TResult Function(StoreEntity store) onChooseStore,
  }) {
    return onChooseStore(store);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageKey)? getData,
    TResult? Function(StoreEntity store)? onChooseStore,
  }) {
    return onChooseStore?.call(store);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageKey)? getData,
    TResult Function(StoreEntity store)? onChooseStore,
    required TResult orElse(),
  }) {
    if (onChooseStore != null) {
      return onChooseStore(store);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetData value) getData,
    required TResult Function(_OnChooseStore value) onChooseStore,
  }) {
    return onChooseStore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetData value)? getData,
    TResult? Function(_OnChooseStore value)? onChooseStore,
  }) {
    return onChooseStore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetData value)? getData,
    TResult Function(_OnChooseStore value)? onChooseStore,
    required TResult orElse(),
  }) {
    if (onChooseStore != null) {
      return onChooseStore(this);
    }
    return orElse();
  }
}

abstract class _OnChooseStore implements StoreEvent {
  const factory _OnChooseStore({required final StoreEntity store}) =
      _$OnChooseStoreImpl;

  StoreEntity get store;
  @JsonKey(ignore: true)
  _$$OnChooseStoreImplCopyWith<_$OnChooseStoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
