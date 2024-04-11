import 'package:json_annotation/json_annotation.dart';
import 'package:users_json/dto/user_dto.dart';

part 'users_full_json_dto.g.dart';

@JsonSerializable()
class UsersFullJsonDTO {
  UsersFullJsonDTO({
    required this.users,
    required this.total,
    required this.skip,
    required this.limit,
  });

  List<UserDTO> users;
  int total;
  int skip;
  int limit;

  factory UsersFullJsonDTO.fromJson(Map<String, dynamic> json) =>
      _$UsersFullJsonDTOFromJson(json);
  Map<String, dynamic> toJson() => _$UsersFullJsonDTOToJson(this);
}
