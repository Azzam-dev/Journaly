import 'package:flutter/material.dart';
import 'intro.dart';
import 'login.dart';
import 'createAccount.dart';
import 'Counter.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Journaly"),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [Icon(Icons.home), Text("Home")],
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [Icon(Icons.person), Text("Profile")],
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [Icon(Icons.search), Text("Search")],
                ),
              ),
            ],
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Intro(), Login(), CreateAccount(), MyCounter()],
          ),
        ),
        backgroundColor: Color.fromARGB(255, 197, 251, 200),
      ),
    );
  }
}
