import 'package:flutter/material.dart';
import 'intro.dart';
import 'login.dart';
import 'createAccount.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Intro(), Login(), CreateAccount()],
          ),
        ),
        backgroundColor: Color.fromARGB(255, 197, 251, 200),
      ),
    );
  }
}
