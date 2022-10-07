import 'package:flutter/material.dart';

class DetailsPhoto extends StatelessWidget {
  const DetailsPhoto({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        width: double.infinity,
        height: size.height / 3.5,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(
            'images/img.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
