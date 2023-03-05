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
              ListTile(
                onTap: () {
                  print("did tap Home");
                },
                leading: Icon(Icons.home),
                title: Text("Home"),
                subtitle: Text("this is the Home page"),
              ),
              ListTile(
                onTap: () {
                  print("did tap Profile");
                },
                leading: Icon(Icons.person),
                title: Text("Profile"),
                subtitle: Text("this is your Profile page"),
              ),
              ListTile(
                onTap: () {
                  print("did tap Search");
                },
                leading: Icon(Icons.search),
                title: Text("Search"),
                subtitle: Text("this is the Search page"),
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
