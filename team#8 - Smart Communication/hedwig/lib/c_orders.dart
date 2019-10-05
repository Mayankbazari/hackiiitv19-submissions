import 'package:flutter/material.dart';
import 'package:hedwig/CurrentOrders/current_order1.dart';
import 'package:hedwig/CurrentOrders/current_orders.dart';

class C_orders extends StatefulWidget {
  @override
  _C_ordersState createState() => _C_ordersState();
}

class _C_ordersState extends State<C_orders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Current Orders"),
      ),
      body: Stack(children: <Widget>[
        Image(
          image: AssetImage(
            'images/hedwig.jpg',
          ),
          fit: BoxFit.cover,
          color: Colors.white70,
          colorBlendMode: BlendMode.lighten,
        ),
        ListView(
          children: <Widget>[
            Card(
              child: ListTile(
                // isThreeLine: true,
                title: Text("P987654"),
                subtitle: Text("6 October 2019 9:50"),
                enabled: true,
                leading: Container(
                  height: 60.0,
                  width: 60.0,
                  color: Colors.amberAccent[200],
                  child: Center(
                    child: Text(
                      "P",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Current_order()),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text("D653289"),
                subtitle: Text("6 October 2019 14:20"),
                enabled: true,
                leading: Container(
                  height: 60.0,
                  width: 60.0,
                  color: Color.fromRGBO(80, 185, 135, 0.9),
                  child: Center(
                    child: Text(
                      "D",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Current_order1()),
                  );
                },
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
