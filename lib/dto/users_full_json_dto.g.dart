// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_full_json_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UsersFullJsonDTO _$UsersFullJsonDTOFromJson(Map<String, dynamic> json) =>
    UsersFullJsonDTO(
      users: (json['users'] as List<dynamic>)
          .map((e) => UserDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int,
      skip: json['skip'] as int,
      limit: json['limit'] as int,
    );

Map<String, dynamic> _$UsersFullJsonDTOToJson(UsersFullJsonDTO instance) =>
    <String, dynamic>{
      'users': instance.users,
      'total': instance.total,
      'skip': instance.skip,
      'limit': instance.limit,
    };
