// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diagnosis_image_input_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DiagnosisImageInputEvent {
  File get image => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File image) uploadImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File image)? uploadImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File image)? uploadImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadImage value) uploadImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UploadImage value)? uploadImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadImage value)? uploadImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DiagnosisImageInputEventCopyWith<DiagnosisImageInputEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiagnosisImageInputEventCopyWith<$Res> {
  factory $DiagnosisImageInputEventCopyWith(DiagnosisImageInputEvent value,
          $Res Function(DiagnosisImageInputEvent) then) =
      _$DiagnosisImageInputEventCopyWithImpl<$Res, DiagnosisImageInputEvent>;
  @useResult
  $Res call({File image});
}

/// @nodoc
class _$DiagnosisImageInputEventCopyWithImpl<$Res,
        $Val extends DiagnosisImageInputEvent>
    implements $DiagnosisImageInputEventCopyWith<$Res> {
  _$DiagnosisImageInputEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadImageImplCopyWith<$Res>
    implements $DiagnosisImageInputEventCopyWith<$Res> {
  factory _$$UploadImageImplCopyWith(
          _$UploadImageImpl value, $Res Function(_$UploadImageImpl) then) =
      __$$UploadImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({File image});
}

/// @nodoc
class __$$UploadImageImplCopyWithImpl<$Res>
    extends _$DiagnosisImageInputEventCopyWithImpl<$Res, _$UploadImageImpl>
    implements _$$UploadImageImplCopyWith<$Res> {
  __$$UploadImageImplCopyWithImpl(
      _$UploadImageImpl _value, $Res Function(_$UploadImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$UploadImageImpl(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$UploadImageImpl implements _UploadImage {
  const _$UploadImageImpl({required this.image});

  @override
  final File image;

  @override
  String toString() {
    return 'DiagnosisImageInputEvent.uploadImage(image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadImageImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadImageImplCopyWith<_$UploadImageImpl> get copyWith =>
      __$$UploadImageImplCopyWithImpl<_$UploadImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File image) uploadImage,
  }) {
    return uploadImage(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File image)? uploadImage,
  }) {
    return uploadImage?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File image)? uploadImage,
    required TResult orElse(),
  }) {
    if (uploadImage != null) {
      return uploadImage(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadImage value) uploadImage,
  }) {
    return uploadImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UploadImage value)? uploadImage,
  }) {
    return uploadImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadImage value)? uploadImage,
    required TResult orElse(),
  }) {
    if (uploadImage != null) {
      return uploadImage(this);
    }
    return orElse();
  }
}

abstract class _UploadImage implements DiagnosisImageInputEvent {
  const factory _UploadImage({required final File image}) = _$UploadImageImpl;

  @override
  File get image;
  @override
  @JsonKey(ignore: true)
  _$$UploadImageImplCopyWith<_$UploadImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
