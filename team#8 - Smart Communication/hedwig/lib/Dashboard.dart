import 'package:flutter/material.dart';
import 'package:hedwig/user_profile.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HEDWIG"),
        centerTitle: true,
      ),
      drawer: Drawer(),
      body: Stack(
        children: <Widget>[
          Image(
            image: AssetImage(
              'images/hedwig.jpg',
            ),
            fit: BoxFit.cover,
            color: Colors.white70,
            colorBlendMode: BlendMode.lighten,
            // filterQuality: FilterQuality.high,
          ),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text("New Order"),
        onPressed: () {},
        backgroundColor: Colors.black87,
      ),
    );
  }
}
