import 'package:flutter/material.dart';

class CardPhoto extends StatelessWidget {
  const CardPhoto({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 90,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset(
          'images/img.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}