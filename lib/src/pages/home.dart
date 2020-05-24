import 'package:backgrounds_custom_painter/src/pages/circular_header.dart';
import 'package:backgrounds_custom_painter/src/pages/curve_header.dart';
import 'package:backgrounds_custom_painter/src/pages/diagonal_header.dart';
import 'package:backgrounds_custom_painter/src/pages/pico_header.dart';
import 'package:backgrounds_custom_painter/src/pages/triangle_header.dart';
import 'package:backgrounds_custom_painter/src/pages/waves_header.dart';
import 'package:flutter/material.dart';

import '../theme/theme.dart';
// import '../widgets/square_header.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 300.0,
                color: myTheme.primaryColor,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Siguiente', textScaleFactor: 1.5,),
                    Icon(Icons.chevron_right, size: 35.0)
                  ],
                ),
              )
            ],
          ),
          CircularHeader(),
          DiagonalHeader(),
          TriangleHeader(),
          PicoHeader(),
          CurveHeader(),
          WavesHeader(),
        ],
      )
    );
  }
}