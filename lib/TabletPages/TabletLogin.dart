import 'package:flutter/material.dart';

import '../intro.dart';
import '../login.dart';

class TabletLogin extends StatelessWidget {
  const TabletLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Intro(), Login()],
      ),
    );
  }
}
