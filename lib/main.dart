import 'package:flutter/material.dart';
import 'package:test_asta_mobi/resources/theme.dart';
import 'package:test_asta_mobi/src/ui/main/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MainScreenWidget(),
      theme: buildThemeData(),
    );
  }
}






