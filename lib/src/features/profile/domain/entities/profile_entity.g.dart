// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileDataImpl _$$ProfileDataImplFromJson(Map<String, dynamic> json) =>
    _$ProfileDataImpl(
      username: json['username'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      avatar: (json['avatar'] as num?)?.toInt(),
      dateOfBirth: json['dateOfBirth'] as String?,
      bio: json['bio'] as String?,
      preferredGenres: (json['preferredGenres'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$$ProfileDataImplToJson(_$ProfileDataImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'name': instance.name,
      'email': instance.email,
      'avatar': instance.avatar,
      'dateOfBirth': instance.dateOfBirth,
      'bio': instance.bio,
      'preferredGenres': instance.preferredGenres,
      'createdAt': instance.createdAt,
    };
