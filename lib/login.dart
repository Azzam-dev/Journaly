import 'package:flutter/material.dart';
import 'Home.dart';

class Login extends StatefulWidget {
  final String? hint;
  const Login({
    super.key,
    this.hint,
  });

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool correctEntry = true;
  String username = "";
  String password = "";

  void goHomeScreen() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Home(),
        ));
  }

  void checkUsernamePassword() {
    setState(() {
      if (username == "" || password == "") {
        correctEntry = false;
      } else {
        correctEntry = true;
        goHomeScreen();
        //.. الانتقال
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 30,
          width: 100,
          margin: EdgeInsets.all(10),
          color: correctEntry ? Colors.white : Colors.red,
          child: TextField(
            onChanged: (value) => {username = value},
            decoration: InputDecoration(hintText: widget.hint),
          ),
        ),
        Container(
          height: 30,
          width: 100,
          margin: EdgeInsets.all(10),
          color: correctEntry ? Colors.white : Colors.red,
          child: TextField(
            onChanged: (value) => {password = value},
            decoration: InputDecoration(hintText: 'Password'),
          ),
        ),
        Text('Reset password'),
        ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            onPressed: checkUsernamePassword,
            child: Text("Sign in"))
      ],
    );
  }
}
