import 'package:flutter/material.dart';
import 'package:test_asta_mobi/resources/colors.dart';

ThemeData buildThemeData() {
  return ThemeData(
    scaffoldBackgroundColor: AppColor.backgroundColor,
    appBarTheme: const AppBarTheme(
      elevation: 0.0,
    ),
    textTheme: const TextTheme(
      bodyText2: TextStyle(color: Colors.white, fontSize: 12),
    ),
  );
}
