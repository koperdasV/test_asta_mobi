import 'package:flutter/material.dart';

class Cashback extends StatelessWidget {
  const Cashback({
    Key? key,
    this.color,
    this.width,
    this.heigth,
    this.border,
  }) : super(key: key);

  final Color? color;
  final double? width;
  final double? heigth;
  final BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: heigth,
      decoration: BoxDecoration(
        border: border,
        borderRadius: const BorderRadius.horizontal(left: Radius.circular(16)),
        color: color,
      ),
      child: const Center(
        child: Text(
          '10%',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
