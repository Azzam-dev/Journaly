import 'package:flutter/material.dart';
import 'MyDrawer.dart';
import 'MyRadio.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
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
        body: MyRadio(),
      ),
    );
  }
}
