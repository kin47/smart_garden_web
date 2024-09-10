// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_kit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MyKitEvent {
  MyKitTab get tab => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MyKitTab tab) changeTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MyKitTab tab)? changeTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MyKitTab tab)? changeTab,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTab value) changeTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTab value)? changeTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTab value)? changeTab,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyKitEventCopyWith<MyKitEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyKitEventCopyWith<$Res> {
  factory $MyKitEventCopyWith(
          MyKitEvent value, $Res Function(MyKitEvent) then) =
      _$MyKitEventCopyWithImpl<$Res, MyKitEvent>;
  @useResult
  $Res call({MyKitTab tab});
}

/// @nodoc
class _$MyKitEventCopyWithImpl<$Res, $Val extends MyKitEvent>
    implements $MyKitEventCopyWith<$Res> {
  _$MyKitEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tab = null,
  }) {
    return _then(_value.copyWith(
      tab: null == tab
          ? _value.tab
          : tab // ignore: cast_nullable_to_non_nullable
              as MyKitTab,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangeTabImplCopyWith<$Res>
    implements $MyKitEventCopyWith<$Res> {
  factory _$$ChangeTabImplCopyWith(
          _$ChangeTabImpl value, $Res Function(_$ChangeTabImpl) then) =
      __$$ChangeTabImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MyKitTab tab});
}

/// @nodoc
class __$$ChangeTabImplCopyWithImpl<$Res>
    extends _$MyKitEventCopyWithImpl<$Res, _$ChangeTabImpl>
    implements _$$ChangeTabImplCopyWith<$Res> {
  __$$ChangeTabImplCopyWithImpl(
      _$ChangeTabImpl _value, $Res Function(_$ChangeTabImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tab = null,
  }) {
    return _then(_$ChangeTabImpl(
      tab: null == tab
          ? _value.tab
          : tab // ignore: cast_nullable_to_non_nullable
              as MyKitTab,
    ));
  }
}

/// @nodoc

class _$ChangeTabImpl implements _ChangeTab {
  const _$ChangeTabImpl({required this.tab});

  @override
  final MyKitTab tab;

  @override
  String toString() {
    return 'MyKitEvent.changeTab(tab: $tab)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeTabImpl &&
            (identical(other.tab, tab) || other.tab == tab));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tab);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeTabImplCopyWith<_$ChangeTabImpl> get copyWith =>
      __$$ChangeTabImplCopyWithImpl<_$ChangeTabImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MyKitTab tab) changeTab,
  }) {
    return changeTab(tab);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MyKitTab tab)? changeTab,
  }) {
    return changeTab?.call(tab);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MyKitTab tab)? changeTab,
    required TResult orElse(),
  }) {
    if (changeTab != null) {
      return changeTab(tab);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeTab value) changeTab,
  }) {
    return changeTab(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeTab value)? changeTab,
  }) {
    return changeTab?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeTab value)? changeTab,
    required TResult orElse(),
  }) {
    if (changeTab != null) {
      return changeTab(this);
    }
    return orElse();
  }
}

abstract class _ChangeTab implements MyKitEvent {
  const factory _ChangeTab({required final MyKitTab tab}) = _$ChangeTabImpl;

  @override
  MyKitTab get tab;
  @override
  @JsonKey(ignore: true)
  _$$ChangeTabImplCopyWith<_$ChangeTabImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
