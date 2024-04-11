import 'package:users_json/repository/users_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:users_json/models/user.dart';

class UsersViewModelNotifier extends StateNotifier<List<User>> {
  UsersViewModelNotifier() : super([]);

  final UsersRepository _usersRepository = UsersRepository();

  void displayUsers() async {
    final usersFullJson = await _usersRepository.getUsers();
    List<User> userList = [];
    userList.addAll(usersFullJson.users);
    state = userList;
  }
}

final usersViewModelProvider =
    StateNotifierProvider<UsersViewModelNotifier, List<User>>((ref) {
  return UsersViewModelNotifier();
});
