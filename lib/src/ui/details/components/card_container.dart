import 'package:flutter/material.dart';
import 'package:test_asta_mobi/resources/colors.dart';
import 'package:test_asta_mobi/resources/padding.dart';

class CardContainer extends StatelessWidget {
  const CardContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Container(
          color: const Color.fromRGBO(255, 255, 255, 0.15),
          width: double.infinity,
          height: 120,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Container(
                    color: Colors.white,
                    width: 130,
                    height: 80,
                    child: Center(
                      child: Image.asset(
                        'images/aroma.png',
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: AppPadding.kdefaultPadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Арома Кава',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Row(
                        children: [
                          Image.asset('images/coffee.png'),
                          const SizedBox(width: 7),
                          Text(
                            'Кафе і ресторани',
                            style: TextStyle(
                              color: AppColor.categoryColor,
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
