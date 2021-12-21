import 'package:flutter/material.dart';
import 'package:news_app/onBoarding.dart';
//import 'package:news_app/onBoarding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: onBoarding(),
    );
  }
}
