import 'package:flutter/material.dart';

class ErrorMessage extends StatelessWidget {
  final String message;
  Color color;
  IconData icon;
  ErrorMessage(
      {super.key,
      required this.message,
      this.color = Colors.red,
      this.icon = Icons.error});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(icon),
            SizedBox(
              width: 20,
            ),
            Text(message),
          ],
        ),
      ),
    );
  }
}
