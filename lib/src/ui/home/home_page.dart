import 'package:flutter/material.dart';
import 'package:test_asta_mobi/resources/colors.dart';
import 'package:test_asta_mobi/src/ui/home/components/sliding_bottom_sheet.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: const SlidingBottomSheet(),
    );
  }
}




