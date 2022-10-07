import 'package:flutter/material.dart';
import 'package:test_asta_mobi/src/model/product.dart';

class CardPhoto extends StatelessWidget {
  const CardPhoto({
    Key? key, required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 90,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.network(
          product.imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
