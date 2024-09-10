// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationModelImpl _$$NotificationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationModelImpl(
      id: (json['id'] as num?)?.toInt(),
      message: json['message'] as String?,
      time:
          json['time'] == null ? null : DateTime.parse(json['time'] as String),
      isRead: json['is_read'] as bool?,
    );

Map<String, dynamic> _$$NotificationModelImplToJson(
        _$NotificationModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'message': instance.message,
      'time': instance.time?.toIso8601String(),
      'is_read': instance.isRead,
    };
