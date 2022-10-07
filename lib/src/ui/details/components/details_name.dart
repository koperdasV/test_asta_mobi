import 'package:flutter/material.dart';
import 'package:test_asta_mobi/resources/padding.dart';
import 'package:test_asta_mobi/src/ui/home/components/cashback.dart';

class DetailsName extends StatelessWidget {
  const DetailsName({
    Key? key,
  }) : super(key: key);

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
              children: const [
                Text(
                  'Айс Лате',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'ціна: 35',
                  style: TextStyle(
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
          ),
        ],
      ),
    );
  }
}