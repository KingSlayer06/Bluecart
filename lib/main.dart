import 'package:flutter/material.dart';
import 'SignIn/SignIn.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "BlueCart",
      theme: ThemeData(
        primaryColor: Colors.blue,
        accentColor: Colors.white,
      ),
      //Homepage
      home: new SignIn(),
      debugShowCheckedModeBanner: false,
    );
  }
}

