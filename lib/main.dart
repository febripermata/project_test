import 'package:flutter/material.dart';
import 'package:project_test/pages/home.dart';
import 'package:project_test/pages/login.dart';
import 'package:project_test/pages/sign_up.dart';
import 'package:project_test/pages/splash.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Online Learning Apps',
        theme: ThemeData(
        fontFamily: 'Poppins',
        ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}