import 'package:flutter/material.dart';
import 'package:test_asta_mobi/src/model/product_freezed.dart';

class DetailsPhoto extends StatelessWidget {
  const DetailsPhoto({
    Key? key,
    required this.size, required this.product,
  }) : super(key: key);

  final Size size;
    final Product product;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        width: double.infinity,
        height: size.height / 3.5,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
