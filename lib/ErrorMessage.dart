import 'package:flutter/material.dart';

class ErrorMessage extends StatelessWidget {
  final String message;
  Color color;
  ErrorMessage({super.key, required this.message, this.color = Colors.red});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(message),
      ),
    );
  }
}
