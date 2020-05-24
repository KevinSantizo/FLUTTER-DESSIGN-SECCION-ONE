import 'package:backgrounds_custom_painter/src/components/dashboard.dart';
import 'package:flutter/material.dart';

import 'src/pages/circular_header.dart';
import 'src/pages/curve_header.dart';
import 'src/pages/diagonal_header.dart';
import 'src/pages/home.dart';
import 'src/pages/pico_header.dart';
import 'src/pages/triangle_header.dart';
import 'src/pages/waves_header.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Header Cuadrado',
      home: DashboardPage(),
      routes: {
        'circular-header' : (BuildContext context) => CircularHeader(),
        'diagonal-header' : (BuildContext context) => DiagonalHeader(),
        'triangle-header' : (BuildContext context) => TriangleHeader(),
        'pico-header'     : (BuildContext context) => PicoHeader(),
        'curve-header'    : (BuildContext context) => CurveHeader(),
        'waves-header'    : (BuildContext context) => WavesHeader(),
      },
    );
  }
}