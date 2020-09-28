import 'package:flutter/material.dart';

// import 'screens/homepage.dart';
import 'screens/run.dart';
// import 'package:homepage/screens/homepage.dart';
// import 'package:homepage/screens/run.dart';


void main() {

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Run(),
    theme: ThemeData(
      primaryColor: Colors.blueAccent
    ),
  ));
}

