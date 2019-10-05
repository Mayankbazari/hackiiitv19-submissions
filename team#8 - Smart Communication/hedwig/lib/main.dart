import 'package:flutter/material.dart';
import 'package:hedwig/Dashboard.dart';
import 'package:hedwig/user_profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(s
        title: 'Hedwig',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            appBarTheme: AppBarTheme(color: Colors.black)),
        home: Dashboard());
  }
}
