import 'package:flutter/material.dart';
import 'package:test_asta_mobi/src/model/product.dart';

class Cashback extends StatelessWidget {
  const Cashback({
    Key? key,
    this.color,
    this.width,
    this.heigth,
    this.border,
    required this.product,
  }) : super(key: key);

  final Color? color;
  final double? width;
  final double? heigth;
  final BoxBorder? border;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: heigth,
      decoration: BoxDecoration(
        border: border,
        borderRadius: const BorderRadius.horizontal(left: Radius.circular(16)),
        color: product.cashback == '10' ? color : Colors.purple,
      ),
      child: Center(
        child: Text(
          product.cashback,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
