import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:test_asta_mobi/src/ui/home/body.dart';
import 'package:test_asta_mobi/src/ui/home/components/card.dart';

class SlidingBottomSheet extends StatelessWidget {
  const SlidingBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlidingSheet(
      elevation: 8,
      cornerRadius: 16,
      snapSpec: const SnapSpec(
        snap: false,
        snappings: [0.25, 0.7, 1.0],
        positioning: SnapPositioning.relativeToAvailableSpace,
      ),
      body: const Body(),
      builder: (context, state) {
        return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(left: 16, right: 16, bottom: 8),
              child: CardWidget(),
            );
          },
        );
      },
      headerBuilder: (context, state) {
        return Container(
          height: 56,
          width: double.infinity,
          color: Colors.white,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 16),
                child: Image.asset('images/fire.png'),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 12, top: 16),
                child: Text(
                  'Гарячі пропозиції',
                  style: TextStyle(
                    color: Color(0xFF262841),
                    fontSize: 24,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}