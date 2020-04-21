import 'package:flutter/material.dart';

import 'src/pages/circular_header.dart';
import 'src/pages/diagonal_header.dart';
import 'src/pages/home.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Header Cuadrado',
      home: Home(),
      routes: {
        'circular-header': (BuildContext context) => CircularHeader(),
        'diagonal-header': (BuildContext context) => DiagonalHeader()
      },
    );
  }
}