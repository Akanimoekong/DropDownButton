import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {

  MyContainer(
      {required this.child,   required this.color});

  final Widget child;
/*  final double height;
  final double width;*/
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 50,
        width: 50,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.all(Radius.circular(8))),
        child: child,
      ),
    );
  }
}