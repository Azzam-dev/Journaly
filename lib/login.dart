import 'package:flutter/material.dart';
import 'Home.dart';
import 'ErrorMessage.dart';

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
  String username = "";
  String password = "";
  String confirmPassword = "";

  Widget errorMessage = SizedBox(
    height: 0,
  );

  void openHomeScreen() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Home(
            child: Text("Hello"),
            title: username,
          ),
        ));
  }

  void checkUsernamePassword() {
    setState(() {
      if (username == "") {
        errorMessage = ErrorMessage(message: "please enter a username",);
      } else if (password == "") {
        errorMessage = ErrorMessage(message: "please enter a password",);
      } else if (password != confirmPassword) {
        errorMessage = ErrorMessage(message: "confirm Password not Equals to main Password")
      } else {
        openHomeScreen();
      }
    });
  }

  void removeErrorMessage() {
    setState(() {
      errorMessage = SizedBox(
        height: 0,
      );
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
          child: TextField(
            onTap: removeErrorMessage,
            onChanged: (value) => {username = value},
            decoration: InputDecoration(hintText: widget.hint),
          ),
        ),
        Container(
          height: 30,
          width: 100,
          margin: EdgeInsets.all(10),
          child: TextField(
            onTap: removeErrorMessage,
            onChanged: (value) => {password = value},
            decoration: InputDecoration(hintText: 'Password'),
          ),
        ),
        Container(
          height: 30,
          width: 100,
          margin: EdgeInsets.all(10),
          child: TextField(
            onTap: removeErrorMessage,
            onChanged: (value) => {confirmPassword = value},
            decoration: InputDecoration(hintText: 'Confirm password'),
          ),
        ),
        errorMessage,
        Text('Reset password'),
        ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            onPressed: checkUsernamePassword,
            child: Text("Sign in"))
      ],
    );
  }
}
