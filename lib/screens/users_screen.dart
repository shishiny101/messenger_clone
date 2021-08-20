import 'package:flutter/material.dart';
import 'package:login_screen_app/models/user/user_model.dart';

class UsersScreen extends StatelessWidget {

  List<UserModel> users = [
    UserModel(
        1,'Ali Hassan','0112233445'),
    UserModel(
        2,'Ali Hassan','0112233445'),
    UserModel(
        3,'Ali Hassan','0112233445'),
    UserModel(
        4,'Ali Hassan','0112233445'),
    UserModel(
        5,'Ali Hassan','0112233445'),
    UserModel(
        6,'Ali Hassan','0112233445'),
    UserModel(
        1,'Ali Hassan','0112233445'),
    UserModel(
        2,'Ali Hassan','0112233445'),
    UserModel(
        3,'Ali Hassan','0112233445'),
    UserModel(
        4,'Ali Hassan','0112233445'),
    UserModel(
        5,'Ali Hassan','0112233445'),
    UserModel(
        6,'Ali Hassan','0112233445'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Users'
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => buildUserItem(users[index]),
          separatorBuilder: (context, index) => Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey[300],
          ),
          itemCount: users.length,
    )
    );
  }

  Widget buildUserItem(UserModel user) => Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.blue,
          radius: 25.0,
          child: Text(
            '${user.id}',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          width: 20.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '${user.name}',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
                '${user.phone}'
            ),
          ],
        ),
      ],
    ),
  );
}
