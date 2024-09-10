// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  int? get id => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  bool? get isAdmin => throw _privateConstructorUsedError;
  bool? get canPredictDisease => throw _privateConstructorUsedError;
  bool? get canReceiveNoti => throw _privateConstructorUsedError;
  bool? get isVerified => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {int? id,
      String? email,
      String? name,
      String? phoneNumber,
      String? avatar,
      bool? isAdmin,
      bool? canPredictDisease,
      bool? canReceiveNoti,
      bool? isVerified});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? avatar = freezed,
    Object? isAdmin = freezed,
    Object? canPredictDisease = freezed,
    Object? canReceiveNoti = freezed,
    Object? isVerified = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      isAdmin: freezed == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool?,
      canPredictDisease: freezed == canPredictDisease
          ? _value.canPredictDisease
          : canPredictDisease // ignore: cast_nullable_to_non_nullable
              as bool?,
      canReceiveNoti: freezed == canReceiveNoti
          ? _value.canReceiveNoti
          : canReceiveNoti // ignore: cast_nullable_to_non_nullable
              as bool?,
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? email,
      String? name,
      String? phoneNumber,
      String? avatar,
      bool? isAdmin,
      bool? canPredictDisease,
      bool? canReceiveNoti,
      bool? isVerified});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? avatar = freezed,
    Object? isAdmin = freezed,
    Object? canPredictDisease = freezed,
    Object? canReceiveNoti = freezed,
    Object? isVerified = freezed,
  }) {
    return _then(_$UserModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      isAdmin: freezed == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool?,
      canPredictDisease: freezed == canPredictDisease
          ? _value.canPredictDisease
          : canPredictDisease // ignore: cast_nullable_to_non_nullable
              as bool?,
      canReceiveNoti: freezed == canReceiveNoti
          ? _value.canReceiveNoti
          : canReceiveNoti // ignore: cast_nullable_to_non_nullable
              as bool?,
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl(
      {this.id,
      this.email,
      this.name,
      this.phoneNumber,
      this.avatar,
      this.isAdmin,
      this.canPredictDisease,
      this.canReceiveNoti,
      this.isVerified});

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? email;
  @override
  final String? name;
  @override
  final String? phoneNumber;
  @override
  final String? avatar;
  @override
  final bool? isAdmin;
  @override
  final bool? canPredictDisease;
  @override
  final bool? canReceiveNoti;
  @override
  final bool? isVerified;

  @override
  String toString() {
    return 'UserModel(id: $id, email: $email, name: $name, phoneNumber: $phoneNumber, avatar: $avatar, isAdmin: $isAdmin, canPredictDisease: $canPredictDisease, canReceiveNoti: $canReceiveNoti, isVerified: $isVerified)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin) &&
            (identical(other.canPredictDisease, canPredictDisease) ||
                other.canPredictDisease == canPredictDisease) &&
            (identical(other.canReceiveNoti, canReceiveNoti) ||
                other.canReceiveNoti == canReceiveNoti) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, email, name, phoneNumber,
      avatar, isAdmin, canPredictDisease, canReceiveNoti, isVerified);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {final int? id,
      final String? email,
      final String? name,
      final String? phoneNumber,
      final String? avatar,
      final bool? isAdmin,
      final bool? canPredictDisease,
      final bool? canReceiveNoti,
      final bool? isVerified}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get email;
  @override
  String? get name;
  @override
  String? get phoneNumber;
  @override
  String? get avatar;
  @override
  bool? get isAdmin;
  @override
  bool? get canPredictDisease;
  @override
  bool? get canReceiveNoti;
  @override
  bool? get isVerified;
  @override
  @JsonKey(ignore: true)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
