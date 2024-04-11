import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:users_json/dto/users_full_json_dto.dart';

class UsersService {
  String url = ('https://dummyjson.com/users');
  Future<UsersFullJsonDTO> fetchUsers() async {
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        Map<String, dynamic> responseUsers = jsonDecode(response.body);

        UsersFullJsonDTO usersFullJsonDto =
            UsersFullJsonDTO.fromJson(responseUsers);
        print(usersFullJsonDto);
        return Future.value(usersFullJsonDto);
      } else {
        throw Exception('Failed to load Users');
      }
    } catch (e) {
      throw Exception('Failed to load Users: $e');
    }
  }
}
