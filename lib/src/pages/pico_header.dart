import 'package:flutter/material.dart';

import '../theme/theme.dart';


class PicoHeader extends StatelessWidget {
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
              painter: _PicoHeaderPainter(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FloatingActionButton.extended(
                  heroTag: "btn1",
                  backgroundColor: Color(0xffff7477),
                  onPressed: () => Navigator.pop(context), 
                  label: Row(
                    children: <Widget>[
                      Icon(Icons.arrow_back_ios),
                      VerticalDivider(),
                      Text('Back'),
                    ],
                  )
                ),
                FloatingActionButton.extended(
                  heroTag: "btn2",
                  backgroundColor: Color(0xffff7477),
                  onPressed: () => Navigator.pushNamed(context, 'curve-header'), 
                  label: Row(
                    children: <Widget>[
                      Text('Curve'),
                      VerticalDivider(),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  )
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _PicoHeaderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final pencil = new Paint();
    pencil.color = myTheme.primaryColor;
    pencil.style = PaintingStyle.fill;
    pencil.strokeWidth = 2;

    final path = new Path();
    //Dibujar

    path.lineTo(0, size.height * 0.25);
    path.lineTo(size.width * 0.5, size.height * 0.3);
    path.lineTo(size.width, size.height * 0.25);
    path.lineTo(size.width, 0);


    canvas.drawPath(path, pencil);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}