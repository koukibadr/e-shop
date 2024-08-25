// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthenticationEntityImpl _$$AuthenticationEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthenticationEntityImpl(
      email: json['email'] as String? ?? '',
      password: json['password'] as String? ?? '',
    );

Map<String, dynamic> _$$AuthenticationEntityImplToJson(
        _$AuthenticationEntityImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
