import 'package:flutter/material.dart';

class CardName extends StatelessWidget {
  const CardName({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Text(
      'Айс Лате',
      style: TextStyle(
        color: Colors.black,
        fontSize: 16,
      ),
    );
  }
}