import 'package:flutter/material.dart';
import 'package:test_asta_mobi/resources/colors.dart';

class CardLocation extends StatelessWidget {
  const CardLocation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Арома кава',
      style: TextStyle(
          fontSize: 12, color: AppColor.locationColor),
    );
  }
}