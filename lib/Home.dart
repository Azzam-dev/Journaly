import 'package:flutter/material.dart';
import 'MyDrawer.dart';
import 'Counter.dart';

class Home extends StatelessWidget {
  Widget child;
  final String? title;
  final Colors? color;

  Home({super.key, required this.child, required this.title, this.color});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("$title"),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        drawer: MyDrawer(),
        body: Center(
          child: child,
        ),
      ),
    );
  }
}
