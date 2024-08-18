import 'package:flutter/material.dart';
import 'package:foodappchat/first_screen.dart';
//import 'package:foodappchat/second_screen.dart';
//import 'package:foodappchat/third_screen.dart';
//import 'package:foodappchat/singinscreen.dart';
import 'package:foodappchat/loginscren.dart';
import 'package:foodappchat/singinscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'food App',
      home: FirstScreen(),
    );
  }
}
