import 'package:flutter/material.dart';

import 'constants.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme() {
    final theme = ThemeData(
      // brightness: Brightness.dark,
      primaryTextTheme: const TextTheme(
        headline6: TextStyle(color: Colors.white),
      ),
      primaryColor: AppColors.tango,
      accentColor: AppColors.outerSpace,
      fontFamily: 'Poppins',

      buttonTheme: const ButtonThemeData(
        textTheme: ButtonTextTheme.accent,
      ),
      textTheme: const TextTheme(
        headline1: TextStyle(
          fontSize: 27.0,
          fontWeight: FontWeight.normal,
          color: AppColors.outerSpace,
        ),
        headline2: TextStyle(
          fontSize: 26.0,
          fontWeight: FontWeight.normal,
          color: AppColors.outerSpace,
        ),
        headline3: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.normal,
          color: AppColors.outerSpace,
        ),
        headline4: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.normal,
          color: AppColors.outerSpace,
        ),
        headline5: TextStyle(
          fontSize: 23.0,
          fontWeight: FontWeight.normal,
          color: AppColors.outerSpace,
        ),
        headline6: TextStyle(
          fontSize: 22.0,
          fontWeight: FontWeight.normal,
          color: AppColors.outerSpace,
        ),
        bodyText1: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.normal,
          color: AppColors.outerSpace,
        ),
        bodyText2: TextStyle(
          fontSize: 12.0,
          fontWeight: FontWeight.normal,
          color: AppColors.outerSpace,
        ),
        subtitle1: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.normal,
          color: AppColors.outerSpace,
        ),
        subtitle2: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.normal,
          color: AppColors.outerSpace,
        ),
      ),
    );
    return theme;
  }
}
