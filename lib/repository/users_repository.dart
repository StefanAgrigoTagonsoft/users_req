import 'package:users_json/dto/users_full_json_dto.dart';
import 'package:users_json/service/users_service.dart';
import 'package:users_json/models/users_full_json.dart';

class UsersRepository {
  final UsersService _usersService = UsersService();

  Future<UsersFullJson> getUsers() async {
    UsersFullJsonDTO usersFullJsonDTO = await _usersService.fetchUsers();
    UsersFullJson users = UsersFullJson.DTO(usersFullJsonDTO: usersFullJsonDTO);
    return Future.value(users);
  }
}
