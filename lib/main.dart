import 'package:flutter/material.dart';
import 'package:green_earth/login.dart';
import 'package:green_earth/mainpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          color: Color(0xffccffcc),
          child:mainPage()
        ),
      ),
    );
  }
}
