import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({required this.color, required this.pressed, required this.thessy}) ;

  final Color color;
  final Function pressed;
  final String thessy;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
      child: ElevatedButton(
        onPressed:() {
          pressed;
        },
        child: Text(thessy),
        style: ElevatedButton.styleFrom(backgroundColor: color, elevation: 10,),
      ),
    );
  }
}
