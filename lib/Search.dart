import 'package:flutter/material.dart';
import 'MyDrawer.dart';

enum Directions {
  east,
  west,
  north,
  south,
}

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  Directions? selectedDirection;
  Widget presentedChild = SizedBox(
    height: 0,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Search"),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        drawer: MyDrawer(),
        body: Center(
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
                      presentedChild = Container(
                        width: 100,
                        height: 100,
                        color: Colors.green,
                        child: Center(
                          child: Text("west"),
                        ),
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
                      presentedChild = Container(
                        width: 100,
                        height: 100,
                        color: Colors.red,
                        child: Center(
                          child: Text("north"),
                        ),
                      );
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
                      presentedChild = Container(
                        width: 100,
                        height: 100,
                        color: Colors.blue,
                        child: Center(
                          child: Text("east"),
                        ),
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
                      presentedChild = Container(
                        width: 100,
                        height: 100,
                        color: Colors.yellow,
                        child: Center(
                          child: Text("south"),
                        ),
                      );
                    });
                  },
                ),
              ),
              presentedChild
            ],
          ),
        ),
      ),
    );
  }
}
