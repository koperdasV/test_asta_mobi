import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    this.text,
    this.icon,
  }) : super(key: key);

  final String? text;
  final String? icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(15),
              shape: const CircleBorder(),
            ),
            child: SizedBox(
              width: 30,
              height: 30,
              child: Image.asset(
                icon.toString(),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Text('$text'),
        )
      ],
    );
  }
}
