import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;

  const MyText(
    this.text, {
    Key? key,
    this.fontSize = 16.0,
    this.color = const Color.fromRGBO(255, 255, 255, 1),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
      ),
    );
  }
}
