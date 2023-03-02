import 'package:flutter/material.dart';

class Intro extends StatelessWidget {
  const Intro({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Hello World!'),
        Text('Welcome back'),
      ],
    );
  }
}
