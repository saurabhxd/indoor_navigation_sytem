import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const drawerHeader = UserAccountsDrawerHeader(
      accountName: Text('John Smith'),
      accountEmail: Text('johnsmith@email.com'),
      currentAccountPicture:
          CircleAvatar(backgroundImage: AssetImage('images/profimage.jpg')),
      decoration: BoxDecoration(color: Colors.blueAccent),
    );

    final drawerItems = ListView(
      children: [
        drawerHeader,
        ListTile(
          title: const Text('Sync to Server'),
          leading: Icon(Icons.arrow_back),
          onTap: () {},
        ),
        ListTile(
          title: const Text('Settings'),
          leading: Icon(Icons.settings),
          onTap: () {},
        ),
        ListTile(
          title: const Text('LogOut'),
          leading: Icon(Icons.logout),
          onTap: () {},
        ),
      ],
    );

    return Drawer(child: drawerItems);
  }
}
