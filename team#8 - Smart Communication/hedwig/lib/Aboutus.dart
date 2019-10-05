import 'package:flutter/material.dart';

class About_us extends StatefulWidget {
  @override
  _About_usState createState() => _About_usState();
}

class _About_usState extends State<About_us> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("About Us"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Image.asset("images/pigwidgeon.jpg"),
            ],
          ),
        ),
      ),
    );
  }
}
