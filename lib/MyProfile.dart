import 'package:flutter/material.dart';
import 'MyDrawer.dart';
import 'AnimatedPensel.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("MyProfile"),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        drawer: MyDrawer(),
        body: Center(
          child: AnimatedPensel(),
        ),
      ),
    );
  }
}
