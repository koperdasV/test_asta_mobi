import 'package:flutter/material.dart';
import 'package:test_asta_mobi/resources/colors.dart';
import 'package:test_asta_mobi/src/ui/home/components/card_price.dart';
import 'package:test_asta_mobi/src/ui/home/components/cashback.dart';

class RecomendationCard extends StatelessWidget {
  const RecomendationCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 12),
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 16),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Stack(
                children: [
                  SizedBox(
                    height: 100,
                    width: 150,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        'images/americano.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 86,
                    child: Cashback(
                      width: 50,
                      heigth: 30,
                      color: AppColor.cashbackRecColor,
                    ),
                  ),
                  Positioned(
                    bottom: 8,
                    left: 8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Ice Американо',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 5),
                        CardPrice(
                          text: 'Ціна: 50 ₴',
                          color: AppColor.priceRecColor,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
