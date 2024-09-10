// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diagnosis_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DiagnosisEvent {
  DiagnosisTab get tabType => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DiagnosisTab tabType) changeTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DiagnosisTab tabType)? changeTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DiagnosisTab tabType)? changeTab,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DiagnosisChangeTab value) changeTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DiagnosisChangeTab value)? changeTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DiagnosisChangeTab value)? changeTab,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DiagnosisEventCopyWith<DiagnosisEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiagnosisEventCopyWith<$Res> {
  factory $DiagnosisEventCopyWith(
          DiagnosisEvent value, $Res Function(DiagnosisEvent) then) =
      _$DiagnosisEventCopyWithImpl<$Res, DiagnosisEvent>;
  @useResult
  $Res call({DiagnosisTab tabType});
}

/// @nodoc
class _$DiagnosisEventCopyWithImpl<$Res, $Val extends DiagnosisEvent>
    implements $DiagnosisEventCopyWith<$Res> {
  _$DiagnosisEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabType = null,
  }) {
    return _then(_value.copyWith(
      tabType: null == tabType
          ? _value.tabType
          : tabType // ignore: cast_nullable_to_non_nullable
              as DiagnosisTab,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiagnosisChangeTabImplCopyWith<$Res>
    implements $DiagnosisEventCopyWith<$Res> {
  factory _$$DiagnosisChangeTabImplCopyWith(_$DiagnosisChangeTabImpl value,
          $Res Function(_$DiagnosisChangeTabImpl) then) =
      __$$DiagnosisChangeTabImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DiagnosisTab tabType});
}

/// @nodoc
class __$$DiagnosisChangeTabImplCopyWithImpl<$Res>
    extends _$DiagnosisEventCopyWithImpl<$Res, _$DiagnosisChangeTabImpl>
    implements _$$DiagnosisChangeTabImplCopyWith<$Res> {
  __$$DiagnosisChangeTabImplCopyWithImpl(_$DiagnosisChangeTabImpl _value,
      $Res Function(_$DiagnosisChangeTabImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabType = null,
  }) {
    return _then(_$DiagnosisChangeTabImpl(
      tabType: null == tabType
          ? _value.tabType
          : tabType // ignore: cast_nullable_to_non_nullable
              as DiagnosisTab,
    ));
  }
}

/// @nodoc

class _$DiagnosisChangeTabImpl implements _DiagnosisChangeTab {
  const _$DiagnosisChangeTabImpl({required this.tabType});

  @override
  final DiagnosisTab tabType;

  @override
  String toString() {
    return 'DiagnosisEvent.changeTab(tabType: $tabType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiagnosisChangeTabImpl &&
            (identical(other.tabType, tabType) || other.tabType == tabType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tabType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiagnosisChangeTabImplCopyWith<_$DiagnosisChangeTabImpl> get copyWith =>
      __$$DiagnosisChangeTabImplCopyWithImpl<_$DiagnosisChangeTabImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DiagnosisTab tabType) changeTab,
  }) {
    return changeTab(tabType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DiagnosisTab tabType)? changeTab,
  }) {
    return changeTab?.call(tabType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DiagnosisTab tabType)? changeTab,
    required TResult orElse(),
  }) {
    if (changeTab != null) {
      return changeTab(tabType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DiagnosisChangeTab value) changeTab,
  }) {
    return changeTab(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DiagnosisChangeTab value)? changeTab,
  }) {
    return changeTab?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DiagnosisChangeTab value)? changeTab,
    required TResult orElse(),
  }) {
    if (changeTab != null) {
      return changeTab(this);
    }
    return orElse();
  }
}

abstract class _DiagnosisChangeTab implements DiagnosisEvent {
  const factory _DiagnosisChangeTab({required final DiagnosisTab tabType}) =
      _$DiagnosisChangeTabImpl;

  @override
  DiagnosisTab get tabType;
  @override
  @JsonKey(ignore: true)
  _$$DiagnosisChangeTabImplCopyWith<_$DiagnosisChangeTabImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
