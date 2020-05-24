import 'package:flutter/material.dart';

class AnimationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SqareAnimated(),
      ),
    );
  }
}

class SqareAnimated extends StatefulWidget {

  @override
  _SqareAnimatedState createState() => _SqareAnimatedState();
}

class _SqareAnimatedState extends State<SqareAnimated> with  SingleTickerProviderStateMixin{

  AnimationController animationController;
  Animation<double> rotation;

  @override
  void initState() {
    animationController = new AnimationController(vsync: this, duration: Duration(milliseconds: 4000));
    rotation = Tween(begin: 0.0, end: 2.0).animate(animationController);
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _Rectangle();
  }
}




class _Rectangle extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
    return Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.green
        ),
      );
    }
}