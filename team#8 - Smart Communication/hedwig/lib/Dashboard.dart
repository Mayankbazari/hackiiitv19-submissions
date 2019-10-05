import 'package:flutter/material.dart';
import 'package:hedwig/NewOrder.dart';
import 'package:hedwig/user_profile.dart';
import 'package:hedwig/c_orders.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Drawer d1() {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountEmail: Text("bazari@mayank.com"),
            accountName: Text(
              "Mayank Bazari",
              style: TextStyle(fontSize: 25),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('images/mayank.jpeg'),
            ),
            decoration: BoxDecoration(color: Colors.black),
            onDetailsPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => User_info(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.add_circle_outline),
            title: Text(
              'Current Orders',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => C_orders()));
            },
          ),
          ListTile(
            leading: Icon(Icons.access_time),
            title: Text(
              'Previous Orders',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.help_outline),
            title: Text(
              'About Us',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HEDWIG"),
        centerTitle: true,
      ),
      drawer: d1(),
      body: Stack(
        children: <Widget>[
          Image(
            image: AssetImage(
              'images/hedwig.jpg',
            ),
            fit: BoxFit.cover,
            color: Colors.white70,
            colorBlendMode: BlendMode.lighten,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text("New Order"),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NewOrder()),
          );
        },
        backgroundColor: Colors.black87,
      ),
    );
  }
}
