import 'package:flutter/material.dart';

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
            children: [
              Text('Hello World!'),
              Text('Welcome back'),
              Container(
                height: 30,
                width: 100,
                child: Center(child: Text('Username')),
                color: Colors.white,
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: 30,
                width: 100,
                child: Center(child: Text('Password')),
                color: Colors.white,
              ),
              Text('Reset password'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('----'),
                  Text('Continue with'),
                  Text('----'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Google'),
                  Text('Apple'),
                  Text('FaceBook'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('do you have an account ?'),
                  Text('Create new account'),
                ],
              )
            ],
          ),
        ),
        backgroundColor: Color.fromARGB(255, 197, 251, 200),
      ),
    );
  }
}
