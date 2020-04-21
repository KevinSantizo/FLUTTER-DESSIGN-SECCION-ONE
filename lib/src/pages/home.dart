import 'package:flutter/material.dart';

import '../theme/theme.dart';
import '../widgets/square_header.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        heroTag: "btn1",
        backgroundColor: Color(0xffff7477),
        onPressed: () => Navigator.pushNamed(context, 'circular-header'),
        label: Row(
          children: <Widget>[
            Text('Redondeado'),
            VerticalDivider(),
            Icon(Icons.arrow_forward_ios)
          ],
        )
      ),
      body: Container(
        height: 300.0,
        color: myTheme.primaryColor,
      )
    );
  }
}