import 'package:flutter/material.dart';
import 'package:test_asta_mobi/resources/colors.dart';

import 'components/card_container.dart';
import 'components/details_name.dart';
import 'components/details_photo.dart';
import 'components/recomendation_card.dart';
import 'components/recomendation_text.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DetailsPhoto(size: size),
          const DetailsName(),
          const CardContainer(),
          const RecomendationText(
            text: 'Рекомендації',
          ),
          RecomendationCard(size: size,)
        ],
      ),
    );
  }
}


