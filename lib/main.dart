import 'package:flutter/material.dart';
import 'DesktopPages/DesktopLogin.dart';
import 'MobliePages/MoblieLogin.dart';
import 'Responsive.dart';
import 'TabletPages/TabletLogin.dart';
import 'intro.dart';
import 'login.dart';
import 'createAccount.dart';

void main() {
  runApp(const MaterialApp(home: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        smallScreen: MoblieLogin(),
        mediumScreen: TabletLogin(),
        largeScreen: DesktopLogin(),
      ),
      backgroundColor: Colors.green[300],
    );
  }
}
