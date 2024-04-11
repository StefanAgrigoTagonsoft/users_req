import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:users_json/viewmodel/users_view_model.dart';

class DisplayUser extends ConsumerWidget {
  const DisplayUser({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final usersViewModel = ref.watch(usersViewModelProvider.notifier);
    usersViewModel.displayUsers();
    final users = ref.watch(usersViewModelProvider);
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: users.length,
            itemBuilder: (context, index) {
              var user = users[index];
              return Text(
                user.image,
                style: TextStyle(fontSize: 40),
              );
            },
          ),
        ],
      )),
    );
  }
}

void main() {
  runApp(const ProviderScope(
    child: MaterialApp(
      home: DisplayUser(),
    ),
  ));
}
