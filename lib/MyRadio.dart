import 'package:flutter/material.dart';

enum Directions {
  east,
  west,
  north,
  south,
}

class MyRadio extends StatefulWidget {
  const MyRadio({super.key});

  @override
  State<MyRadio> createState() => _MyRadioState();
}

class _MyRadioState extends State<MyRadio> {
  Directions? selectedDirection;

  Widget presentedChild = SizedBox(
    height: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ListTile(
            title: Text("west"),
            leading: Radio<Directions>(
              value: Directions.west,
              groupValue: selectedDirection,
              onChanged: (value) {
                setState(() {
                  selectedDirection = value!;
                  presentedChild = DirectionFlag(
                    title: "west",
                    components: [
                      Text("West"),
                      Text("West"),
                    ],
                  );
                });
              },
            ),
          ),
          ListTile(
            title: Text("north"),
            leading: Radio<Directions>(
              value: Directions.north,
              groupValue: selectedDirection,
              onChanged: (value) {
                setState(() {
                  selectedDirection = value!;
                  presentedChild = DirectionFlag(
                      title: "north",
                      color: Colors.red,
                      components: [
                        ElevatedButton(
                          child: Text("dont press"),
                          onPressed: () {
                            print("why did you press me");
                          },
                        ),
                        ElevatedButton(
                          child: Text("dont press"),
                          onPressed: () {
                            print("why did you press me");
                          },
                        ),
                      ]);
                });
              },
            ),
          ),
          ListTile(
            title: Text("east"),
            leading: Radio<Directions>(
              value: Directions.east,
              groupValue: selectedDirection,
              onChanged: (value) {
                setState(() {
                  selectedDirection = value!;
                  presentedChild = DirectionFlag(
                    title: "east",
                    color: Colors.blue,
                    components: [Icon(Icons.flag), Icon(Icons.flag)],
                  );
                });
              },
            ),
          ),
          ListTile(
            title: Text("south"),
            leading: Radio<Directions>(
              value: Directions.south,
              groupValue: selectedDirection,
              onChanged: (value) {
                setState(() {
                  selectedDirection = value!;
                  presentedChild = DirectionFlag(
                      title: "south",
                      color: Colors.yellow,
                      components: [
                        Container(
                          width: 20,
                          height: 20,
                          color: Colors.red,
                        ),
                        Container(
                          width: 20,
                          height: 20,
                          color: Colors.red,
                        ),
                      ]);
                });
              },
            ),
          ),
          presentedChild
        ],
      ),
    );
  }
}

class DirectionFlag extends StatelessWidget {
  List<Widget> components;
  String title;
  Color? color;
  DirectionFlag({
    super.key,
    required this.components,
    required this.title,
    this.color = Colors.green,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: color,
      child: Center(
        child: Column(
          children: [
            Text(title),
            Row(
              children: components,
            )
          ],
        ),
      ),
    );
  }
}
