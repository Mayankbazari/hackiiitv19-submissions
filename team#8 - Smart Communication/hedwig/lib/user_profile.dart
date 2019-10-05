import 'package:flutter/material.dart';

class User_info extends StatefulWidget {
  User_info({Key key}) : super(key: key);

  _User_infoState createState() => _User_infoState();
}

class _User_infoState extends State<User_info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 150.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                // title: Text(
                //   "\nUser Profile",
                //   style: TextStyle(fontSize: 25, fontStyle: FontStyle.italic,color: Colors.black),

                // ),

                background: CircleAvatar(
                  backgroundColor: Colors.indigo,
                  child: new Text("A"),
                ),
              ),
              backgroundColor: Colors.orange[100],
              elevation: 0,
            ),
          ];
        },
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[],
            ),
          ),
        ),
      ),
    );
  }
}
