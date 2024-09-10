// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diagnosis_history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DiagnosisHistoryEvent {
  int get page => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) getData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page)? getData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? getData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetData value) getData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetData value)? getData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetData value)? getData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DiagnosisHistoryEventCopyWith<DiagnosisHistoryEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiagnosisHistoryEventCopyWith<$Res> {
  factory $DiagnosisHistoryEventCopyWith(DiagnosisHistoryEvent value,
          $Res Function(DiagnosisHistoryEvent) then) =
      _$DiagnosisHistoryEventCopyWithImpl<$Res, DiagnosisHistoryEvent>;
  @useResult
  $Res call({int page});
}

/// @nodoc
class _$DiagnosisHistoryEventCopyWithImpl<$Res,
        $Val extends DiagnosisHistoryEvent>
    implements $DiagnosisHistoryEventCopyWith<$Res> {
  _$DiagnosisHistoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetDataImplCopyWith<$Res>
    implements $DiagnosisHistoryEventCopyWith<$Res> {
  factory _$$GetDataImplCopyWith(
          _$GetDataImpl value, $Res Function(_$GetDataImpl) then) =
      __$$GetDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page});
}

/// @nodoc
class __$$GetDataImplCopyWithImpl<$Res>
    extends _$DiagnosisHistoryEventCopyWithImpl<$Res, _$GetDataImpl>
    implements _$$GetDataImplCopyWith<$Res> {
  __$$GetDataImplCopyWithImpl(
      _$GetDataImpl _value, $Res Function(_$GetDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_$GetDataImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetDataImpl implements _GetData {
  const _$GetDataImpl({required this.page});

  @override
  final int page;

  @override
  String toString() {
    return 'DiagnosisHistoryEvent.getData(page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDataImpl &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDataImplCopyWith<_$GetDataImpl> get copyWith =>
      __$$GetDataImplCopyWithImpl<_$GetDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) getData,
  }) {
    return getData(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page)? getData,
  }) {
    return getData?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? getData,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetData value) getData,
  }) {
    return getData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetData value)? getData,
  }) {
    return getData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetData value)? getData,
    required TResult orElse(),
  }) {
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class _GetData implements DiagnosisHistoryEvent {
  const factory _GetData({required final int page}) = _$GetDataImpl;

  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$GetDataImplCopyWith<_$GetDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
