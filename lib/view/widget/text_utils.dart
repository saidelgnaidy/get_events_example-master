import 'package:flutter/material.dart';

class TextUtils extends StatelessWidget {
  const TextUtils({
    Key? key,
    required this.color,
    required this.text,
    required this.fontSize,
    this.fontWeight,
    this.decoration,
  }) : super(key: key);
  final Color color;
  final String text;
  final double fontSize;
  final FontWeight? fontWeight;
  final TextDecoration? decoration;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        decoration: decoration,
      ),
    );
  }
}
