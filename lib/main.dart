import 'package:flutter/material.dart';
import 'package:smart_track_app/login/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Track',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Login(),
    );
  }
}

