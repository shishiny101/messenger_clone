import 'package:flutter/material.dart';
import 'package:login_screen_app/screens/users_screen.dart';
import 'screens/login_screen.dart';
import 'screens/messenger_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      );
  }
}

