import 'package:flutter/material.dart';
import 'package:test_asta_mobi/resources/colors.dart';
import 'package:test_asta_mobi/src/model/product_freezed.dart';

class CardLocation extends StatelessWidget {
  const CardLocation({
    Key? key, required this.product,
  }) : super(key: key);

    final Product product;


  @override
  Widget build(BuildContext context) {
    return Text(
      product.location,
      style: TextStyle(
          fontSize: 12, color: AppColor.locationColor),
    );
  }
}