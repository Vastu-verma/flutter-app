




import 'package:flutter/material.dart';
import 'package:app_first/firstScreen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Review App',
      theme: ThemeData(
        fontFamily: 'GeneralSans',
        primarySwatch: Colors.brown,
      ),
      home:  StepOneScreen(),
    );
  }
}

