import 'package:flutter/material.dart';

class C_orders extends StatefulWidget {
  @override
  _C_ordersState createState() => _C_ordersState();
}

class _C_ordersState extends State<C_orders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Current Orders"),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[],
          ),
        ],
      ),
    );
  }
}
