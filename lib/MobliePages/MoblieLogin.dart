import 'package:flutter/material.dart';
import '../intro.dart';

class MoblieLogin extends StatelessWidget {
  const MoblieLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Intro()],
      ),
    );
  }
}
