// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_feeds_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetFeedsRequestImpl _$$GetFeedsRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$GetFeedsRequestImpl(
      limit: (json['limit'] as num).toInt(),
      offset: (json['offset'] as num).toInt(),
    );

Map<String, dynamic> _$$GetFeedsRequestImplToJson(
        _$GetFeedsRequestImpl instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'offset': instance.offset,
    };
