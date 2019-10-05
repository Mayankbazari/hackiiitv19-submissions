import 'package:flutter/material.dart';

class NewOrder extends StatefulWidget {
  @override
  _NewOrderState createState() => _NewOrderState();
}

class _NewOrderState extends State<NewOrder> {
  TextEditingController t1 = new TextEditingController(text: "");
  TextEditingController t2 = new TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Order"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text(
              "Sender's Details",
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: new EdgeInsets.all(10),
            ),
            Text(
              "Name:",
              textAlign: TextAlign.start,
            ),
            new TextFormField(
              decoration: InputDecoration(labelText: "Enter Email"),
              keyboardType: TextInputType.emailAddress,
            ),
            new TextFormField(
              decoration: InputDecoration(labelText: "Enter Password"),
              keyboardType: TextInputType.text,
              obscureText: true,
            ),
          ],
        ),
      ),
    );
  }
}
