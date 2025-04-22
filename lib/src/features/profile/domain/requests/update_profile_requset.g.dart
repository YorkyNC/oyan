// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_profile_requset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateProfileRequestImpl _$$UpdateProfileRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateProfileRequestImpl(
      username: json['username'] as String,
      bio: json['bio'] as String,
      name: json['name'] as String,
      avatar: (json['avatar'] as num).toInt(),
    );

Map<String, dynamic> _$$UpdateProfileRequestImplToJson(
        _$UpdateProfileRequestImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'bio': instance.bio,
      'name': instance.name,
      'avatar': instance.avatar,
    };
