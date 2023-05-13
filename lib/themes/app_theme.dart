import 'package:flutter/material.dart';

import 'app_palettes.dart';

class AppTheme {
  static ThemeData theme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppPalettes.backgroundColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppPalettes.backgroundColor,
      elevation: 0,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppPalettes.blueColor,
    ),
  );
}
