import 'package:flutter/material.dart';

class AnimationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Rectangle(),
      ),
    );
  }
}
class Rectangle extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
    return Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.blue
        ),
      );
    }
}