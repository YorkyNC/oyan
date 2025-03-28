// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResponseImpl _$$LoginResponseImplFromJson(Map<String, dynamic> json) =>
    _$LoginResponseImpl(
      status: json['status'] as String,
      username: json['username'] as String?,
      email: json['email'] as String?,
      name: json['name'] as String?,
      avatar: (json['avatar'] as num?)?.toInt(),
      dateOfBirth: json['date_of_birth'] as String?,
      bio: json['bio'] as String?,
      preferredGenres: json['preferred_genres'] as bool?,
      createdAt: json['created_at'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$LoginResponseImplToJson(_$LoginResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'username': instance.username,
      'email': instance.email,
      'name': instance.name,
      'avatar': instance.avatar,
      'date_of_birth': instance.dateOfBirth,
      'bio': instance.bio,
      'preferred_genres': instance.preferredGenres,
      'created_at': instance.createdAt,
      'message': instance.message,
    };
