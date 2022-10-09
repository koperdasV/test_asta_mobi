import 'package:flutter/material.dart';
import 'package:test_asta_mobi/src/model/product_freezed.dart';

class CardName extends StatelessWidget {
  const CardName({
    Key? key, required this.product,
  }) : super(key: key);

    final Product product;

  @override
  Widget build(BuildContext context) {
    return Text(
      product.name,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 16,
      ),
    );
  }
}