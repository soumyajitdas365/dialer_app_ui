// ignore_for_file: prefer_const_constructors

import 'package:dialer_app_ui/screens/CallingScreen.dart';
import 'package:dialer_app_ui/screens/dialingscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          fontFamily: "SF UI",
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: DialingScreen());
  }
}
