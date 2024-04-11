import 'package:users_json/dto/users_full_json_dto.dart';
import 'package:users_json/models/user.dart';

class UsersFullJson {
  late List<User> users;
  late int total;
  late int skip;
  late int limit;

  UsersFullJson.DTO({required UsersFullJsonDTO usersFullJsonDTO}) {
    users = usersFullJsonDTO.users
        .map((usersDto) => User.DTO(userDTO: usersDto))
        .toList();
    total = usersFullJsonDTO.total;
    skip = usersFullJsonDTO.skip;
    limit = usersFullJsonDTO.limit;
  }
}
