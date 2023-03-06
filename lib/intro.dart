import 'package:flutter/material.dart';

class Intro extends StatelessWidget {
  const Intro({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: 150, height: 150, child: Image.asset('images/logo.png')),
        Text(
          'Hello World!',
          style: TextStyle(
              fontFamily: "Cairo",
              fontWeight: FontWeight.normal,
              fontSize: 50.0),
        ),
        Text(
          'ياهلا حياكم الله',
          style: TextStyle(
              fontFamily: 'Cairo', fontWeight: FontWeight.bold, fontSize: 30.0),
        ),
      ],
    );
  }
}
