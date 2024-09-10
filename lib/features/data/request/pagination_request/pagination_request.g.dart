// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginationRequestImpl _$$PaginationRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$PaginationRequestImpl(
      page: (json['page'] as num).toInt(),
      limit: (json['limit'] as num?)?.toInt() ?? ApiConfig.limit,
    );

Map<String, dynamic> _$$PaginationRequestImplToJson(
        _$PaginationRequestImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'limit': instance.limit,
    };
