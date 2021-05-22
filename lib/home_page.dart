import 'package:flutter/material.dart';
import 'package:indoor_navigation_sytem/profile_page.dart';
import 'package:indoor_navigation_sytem/widgets/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Indoor Naviation'),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePage()));
            },
            child: CircleAvatar(
              backgroundImage: AssetImage('images/profimage.jpg'),
            ),
          ),
          SizedBox(
            width: 10.0,
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.map_outlined,
              size: 64.0,
              color: Colors.blueAccent,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Maps will be shown here',
              style: TextStyle(fontSize: 30.0),
            )
          ],
        ),
      ),
      drawer: DrawerMenu(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.navigation),
      ),
    );
  }
}
