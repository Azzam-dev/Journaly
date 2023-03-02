import 'package:flutter/material.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
              style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
              onPressed: () => {print("Sign in")},
              child: Container(
                  width: 20,
                  height: 20,
                  child: Image.asset('images/google.png')),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
              onPressed: () => {print("Sign in")},
              child: Container(
                  width: 20,
                  height: 20,
                  child: Image.asset('images/apple.png')),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
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
    );
  }
}
