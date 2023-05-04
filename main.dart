import 'package:flutter/material.dart';
import 'package:flutter_employee/edetails.dart';

import 'elist.dart';
 void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: edetails(),
    );
  }
}