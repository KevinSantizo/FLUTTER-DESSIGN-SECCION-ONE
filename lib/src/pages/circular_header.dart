import 'package:flutter/material.dart';

import '../theme/theme.dart';

class CircularHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 300.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70.0), bottomRight: Radius.circular(70.0)),
              color: myTheme.primaryColor
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
                  onPressed: () => Navigator.pushNamed(context, 'diagonal-header'),
                  label: Row(
                    children: <Widget>[
                      Text('Diagonal'),
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