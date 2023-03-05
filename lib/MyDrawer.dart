import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            onTap: () {
              print("did tap Home");
            },
            leading: Icon(Icons.home),
            title: Text("Home"),
            subtitle: Text("this is the Home page"),
          ),
          ListTile(
            onTap: () {
              print("did tap Profile");
            },
            leading: Icon(Icons.person),
            title: Text("Profile"),
            subtitle: Text("this is your Profile page"),
          ),
          ListTile(
            onTap: () {
              print("did tap Search");
            },
            leading: Icon(Icons.search),
            title: Text("Search"),
            subtitle: Text("this is the Search page"),
          ),
        ],
      ),
    );
  }
}
