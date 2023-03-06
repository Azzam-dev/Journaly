import 'package:flutter/material.dart';

class AnimatedPensel extends StatefulWidget {
  const AnimatedPensel({
    super.key,
  });

  @override
  State<AnimatedPensel> createState() => _AnimatedPenselState();
}

class _AnimatedPenselState extends State<AnimatedPensel> {
  double penselSize = 200;
  Color penselBackgroundColor = Colors.transparent;

  updatePenselSize() {
    setState(
      () {
        if (penselSize == 200) {
          penselSize = 400;
          penselBackgroundColor = Colors.green;
        } else {
          penselSize = 200;
          penselBackgroundColor = Colors.transparent;
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent),
        onPressed: updatePenselSize,
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          color: penselBackgroundColor,
          width: penselSize,
          height: penselSize,
          child: Image.asset(
            "images/pensel.png",
          ),
        ));
  }
}
