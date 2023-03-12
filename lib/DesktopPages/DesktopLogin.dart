import 'package:flutter/material.dart';
import '../createAccount.dart';
import '../intro.dart';
import '../login.dart';

class DesktopLogin extends StatelessWidget {
  const DesktopLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Intro(), Login(), CreateAccount()],
      ),
    );
  }
}
