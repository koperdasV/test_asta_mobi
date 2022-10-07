import 'package:flutter/material.dart';
import 'package:test_asta_mobi/resources/padding.dart';

class RecomendationText extends StatelessWidget {
  const RecomendationText({
    Key? key,required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.kdefaultPadding,
      child: Text(
        text.toString(),
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
