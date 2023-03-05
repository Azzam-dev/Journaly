import 'package:flutter/material.dart';

class MyCounter extends StatefulWidget {
  const MyCounter({super.key});

  @override
  State<MyCounter> createState() => _MyCounterState();
}

class _MyCounterState extends State<MyCounter> {
  int number = 0;
  void incressNumber() {
    setState(() {
      number++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            onPressed: incressNumber,
            child: Container(
              width: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("add"),
                  Icon(Icons.plus_one),
                ],
              ),
            )),
        Text("totel items: $number")
      ],
    );
  }
}
