// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: (json['id'] as num?)?.toInt(),
      email: json['email'] as String?,
      name: json['name'] as String?,
      phoneNumber: json['phone_number'] as String?,
      avatar: json['avatar'] as String?,
      isAdmin: json['is_admin'] as bool?,
      canPredictDisease: json['can_predict_disease'] as bool?,
      canReceiveNoti: json['can_receive_noti'] as bool?,
      isVerified: json['is_verified'] as bool?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'phone_number': instance.phoneNumber,
      'avatar': instance.avatar,
      'is_admin': instance.isAdmin,
      'can_predict_disease': instance.canPredictDisease,
      'can_receive_noti': instance.canReceiveNoti,
      'is_verified': instance.isVerified,
    };
