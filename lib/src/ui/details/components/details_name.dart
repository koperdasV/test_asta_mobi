import 'package:flutter/material.dart';
import 'package:test_asta_mobi/resources/padding.dart';
import 'package:test_asta_mobi/src/model/product_freezed.dart';
import 'package:test_asta_mobi/src/ui/home/components/cashback.dart';

class DetailsName extends StatelessWidget {
  const DetailsName({
    Key? key, required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: AppPadding.kdefaultPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  product.price,
                  style: const TextStyle(
                    fontSize: 21,
                  ),
                ),
              ],
            ),
          ),
          Cashback(
            width: 100,
            heigth: 50,
            color: Colors.transparent,
            border: Border.all(
              color: const Color.fromRGBO(243, 220, 9, 1),
              width: 3,
            ),
            product: product,
          ),
        ],
      ),
    );
  }
}
