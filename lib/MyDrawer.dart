import 'package:flutter/material.dart';
import 'Home.dart';
import 'MyProfile.dart';
import 'Search.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  void openHomeScreen(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Home(),
        ));
  }

  void openProfileScreen(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MyProfile(),
        ));
  }

  void openSearchScreen(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Search(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            onTap: () => openHomeScreen(context),
            leading: Icon(Icons.home),
            title: Text("Home"),
            subtitle: Text("this is the Home page"),
          ),
          ListTile(
            onTap: () => openProfileScreen(context),
            leading: Icon(Icons.person),
            title: Text("Profile"),
            subtitle: Text("this is your Profile page"),
          ),
          ListTile(
            onTap: () => openSearchScreen(context),
            leading: Icon(Icons.search),
            title: Text("Search"),
            subtitle: Text("this is the Search page"),
          ),
        ],
      ),
    );
  }
}
