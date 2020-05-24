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