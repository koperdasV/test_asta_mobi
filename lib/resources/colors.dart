import 'package:flutter/material.dart';

abstract class AppColor {
  static Color backgroundColor = const Color(0xFF1D59F3);
  static Color kPrimaryColor = const Color(0xFF24CFFF);
  static Color unSelectedItemColor = const Color.fromRGBO(161, 161, 161, 1);
  static Color locationColor = const Color.fromRGBO(113, 115, 154, 1);
  static Color bottomNavBarColor = const Color(0xFF002D97);
  static Color categoryColor = const Color(0xFFA6BDF2);
  static Color cashbackRecColor = const Color(0xFF164AC5);
  static Color priceRecColor = const Color(0xFF4778EB);

  static BoxDecoration gradientColor = const BoxDecoration(
    gradient: LinearGradient(
      colors: [
        Color(0xFF4AAEF6),
        Color(0xFF45A1E3),
        Color(0xFF1B7CC2),
      ],
    ),
  );
}
