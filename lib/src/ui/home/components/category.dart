import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, top: 16),
        child: ListView.builder(
          itemCount: 7,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Column(
            children: [
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: const StadiumBorder(),
                  padding: const EdgeInsets.all(20),
                  side: const BorderSide(width: 3, color: Colors.red),
                ),
                onPressed: () {},
                child: Image.asset('images/marketplace.png'),
              ),
              const SizedBox(height: 8),
              const Text('Маркетплейс')
            ],
          ),
        ),
      ),
    );
  }
}
