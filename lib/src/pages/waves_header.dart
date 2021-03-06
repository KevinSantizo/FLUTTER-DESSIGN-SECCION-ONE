import 'package:flutter/material.dart';

import '../theme/theme.dart';


class WavesHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            // color: myTheme.primaryColor,
            child: CustomPaint(
              painter: _WavesHeaderPainter(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.chevron_left, size: 35.0),
                    Text('Anterior', textScaleFactor: 1.5,),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Siguiente', textScaleFactor: 1.5,),
                    Icon(Icons.chevron_right, size: 35.0)
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _WavesHeaderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    final pencil = new Paint();
    pencil.color = myTheme.primaryColor;
    pencil.style = PaintingStyle.fill;
    pencil.strokeWidth = 20;
    final path = new Path();
    //Dibujar

    // path.moveTo(0, size.height);
    // path.lineTo(0, size.height * 0.7);
    // path.quadraticBezierTo(size.width * 0.2, size.height * 0.65, size.width * 0.5, size.height * 0.7);
    // path.quadraticBezierTo(size.width  * 0.8, size.height * 0.75, size.width, size.height * 0.7);
    // path.lineTo(size.width, size.height);
    // canvas.drawPath(path, pencil);
    

    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.30, size.width * 0.5, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.20, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, pencil);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}