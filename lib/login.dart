import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({
    super.key,
  });

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool correctEntry = true;
  String username = "";
  String password = "";

  checkUsernamePassword() {
    setState(() {
      if (username == "" || password == "") {
        correctEntry = false;
      } else {
        correctEntry = true;
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
            decoration: InputDecoration(hintText: "Username"),
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
