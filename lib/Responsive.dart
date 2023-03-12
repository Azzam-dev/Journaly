import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive(
      {super.key,
      required this.smallScreen,
      required this.mediumScreen,
      required this.largeScreen});

  final Widget smallScreen, mediumScreen, largeScreen;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (contex, constraints) {
      if (constraints.maxWidth < 600) {
        return smallScreen;
      } else if (constraints.maxWidth >= 600 && constraints.maxWidth < 1200) {
        return mediumScreen;
      } else {
        return largeScreen;
      }
    });
  }
}
