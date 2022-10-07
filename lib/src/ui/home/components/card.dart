import 'package:flutter/material.dart';
import 'package:test_asta_mobi/src/model/product.dart';
import 'package:test_asta_mobi/src/ui/details/details_page.dart';
import 'package:test_asta_mobi/src/ui/home/components/card_location.dart';
import 'package:test_asta_mobi/src/ui/home/components/card_name.dart';
import 'package:test_asta_mobi/src/ui/home/components/card_photo.dart';
import 'package:test_asta_mobi/src/ui/home/components/card_price.dart';
import 'package:test_asta_mobi/src/ui/home/components/cashback.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key, required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: ((context) => DetailsPage(product: product,)),
        ),
      ),
      child: Stack(
        children: [
          Container(
            height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.5, 0.5),
                  blurRadius: 3.0,
                ),
              ],
              color: Colors.white,
            ),
          ),
          CardPhoto(product: product,),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 180),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CardName(product: product),
                    CardPrice(
                      product: product,
                      color: Colors.black,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Image.asset('images/location.png'),
                          const SizedBox(width: 5),
                          CardLocation(product: product)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            right: 0,
            top: 16,
            child: Cashback(
              width: 70,
              heigth: 40,
              color: Colors.yellow,
              product: product,
            ),
          ),
        ],
      ),
    );
  }
}
