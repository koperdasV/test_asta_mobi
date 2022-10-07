import 'package:flutter/material.dart';

class CardPrice extends StatelessWidget {
  const CardPrice({
    Key? key,
    required this.text,
    this.color,
    this.fontSize,
  }) : super(key: key);

  final String text;
  final Color? color;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 14,
        color: color,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
