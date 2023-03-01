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
        appBar: AppBar(
          title: Text("Journaly"),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Hello World!'),
              Text('Welcome back'),
              Container(
                height: 30,
                width: 100,
                margin: EdgeInsets.all(10),
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(hintText: "Username"),
                ),
              ),
              Container(
                height: 30,
                width: 100,
                margin: EdgeInsets.all(10),
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(hintText: 'Password'),
                ),
              ),
              Text('Reset password'),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  onPressed: () => {print("Sign in")},
                  child: Text("Sign in")),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('----'),
                  Text('Continue with'),
                  Text('----'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    onPressed: () => {print("Sign in")},
                    child: Container(
                        width: 20,
                        height: 20,
                        child: Image.asset('images/google.png')),
                  ),
                  ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                    onPressed: () => {print("Sign in")},
                    child: Container(
                        width: 20,
                        height: 20,
                        child: Image.asset('images/apple.png')),
                  ),
                  ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    onPressed: () => {print("Sign in")},
                    child: Container(
                        width: 20,
                        height: 20,
                        child: Image.asset('images/facebook.png')),
                  ),
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
