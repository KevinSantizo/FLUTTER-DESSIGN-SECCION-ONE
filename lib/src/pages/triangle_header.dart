import 'package:flutter/material.dart';

import '../theme/theme.dart';


class TriangleHeader extends StatelessWidget {
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
              painter: _TriangleHeaderPainter(),
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
                  onPressed: () => Navigator.pushNamed(context, 'pico-header'), 
                  label: Row(
                    children: <Widget>[
                      Text('pico-header'),
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

class _TriangleHeaderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final pencil = new Paint();
    pencil.color = myTheme.primaryColor;
    pencil.style = PaintingStyle.fill;
    pencil.strokeWidth = 2.0;

    final path = new Path();
    //Dibujar

    path.moveTo(0, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, pencil);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}