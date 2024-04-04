import 'package:e_commerce/ui/utils/my_colors.dart';
import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData myTheme = ThemeData(
    ///* TextTheme
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontFamily: 'Poppins',
        color: MyColors.whiteColor,
        fontWeight: FontWeight.w600,
        fontSize: 20,
      ),
      titleMedium: TextStyle(
        fontFamily: 'Poppins',
        color: MyColors.whiteColor,
        fontWeight: FontWeight.w500,
        fontSize: 18,
      ),
      titleSmall: TextStyle(
        fontFamily: 'Poppins',
        color: MyColors.blueColor,
        fontWeight: FontWeight.w300,
        fontSize: 16,
      ),
    ),
  );
}
