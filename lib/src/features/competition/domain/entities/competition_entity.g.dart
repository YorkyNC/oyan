// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'competition_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompetitionImpl _$$CompetitionImplFromJson(Map<String, dynamic> json) =>
    _$CompetitionImpl(
      id: (json['id'] as num?)?.toInt(),
      book: (json['book'] as num?)?.toInt(),
      fromDate: json['from_date'] == null
          ? null
          : DateTime.parse(json['from_date'] as String),
      toDate: json['to_date'] == null
          ? null
          : DateTime.parse(json['to_date'] as String),
      pageFrom: (json['page_from'] as num?)?.toInt(),
      pageTo: (json['page_to'] as num?)?.toInt(),
      prize: (json['prize'] as num?)?.toDouble(),
      players: (json['players'] as num?)?.toInt(),
      questions: (json['questions'] as num?)?.toInt(),
      description: json['description'] as String?,
      status: $enumDecodeNullable(_$CompetitionStatusEnumMap, json['status']),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$CompetitionImplToJson(_$CompetitionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'book': instance.book,
      'from_date': instance.fromDate?.toIso8601String(),
      'to_date': instance.toDate?.toIso8601String(),
      'page_from': instance.pageFrom,
      'page_to': instance.pageTo,
      'prize': instance.prize,
      'players': instance.players,
      'questions': instance.questions,
      'description': instance.description,
      'status': _$CompetitionStatusEnumMap[instance.status],
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

const _$CompetitionStatusEnumMap = {
  CompetitionStatus.done: 'done',
  CompetitionStatus.start: 'start',
  CompetitionStatus.participate: 'participate',
};
