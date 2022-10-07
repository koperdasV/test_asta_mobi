import 'package:flutter/material.dart';
import 'package:test_asta_mobi/src/model/product.dart';

class CardPrice extends StatelessWidget {
  const CardPrice({
    Key? key,
    this.text,
    this.color,
    this.fontSize,
    required this.product,
  }) : super(key: key);

  final String? text;
  final Color? color;
  final double? fontSize;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Text(
      '${product.price} ₴',
      style: TextStyle(
        fontSize: 14,
        color: color,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
