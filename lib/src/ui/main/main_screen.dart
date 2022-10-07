// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:test_asta_mobi/src/ui/history/history_page.dart';
import 'package:test_asta_mobi/src/ui/home/home_page.dart';
import 'package:test_asta_mobi/widgets/bottom_nav_bar.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({Key? key}) : super(key: key);

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  final ValueNotifier<int> pageIndex = ValueNotifier(0);

  void _onNavigationItemSelected(index) {
    pageIndex.value = index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(
        onItemSelected: _onNavigationItemSelected,
      ),
      body: ValueListenableBuilder(
        valueListenable: pageIndex,
        builder: (context, value, child) {
          return IndexedStack(
            index: pageIndex.value,
            children: const[
              HomePage(),
              HistoryPage(),
            ],
          );
        },
      ),
    );
  }
}
