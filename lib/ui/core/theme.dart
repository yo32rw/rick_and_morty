import 'package:flutter/material.dart';

import 'colors.dart';

abstract final class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,

    fontFamily: 'Lato',
    colorScheme: AppColors.lightColorScheme,
    scaffoldBackgroundColor: AppColors.whiteSmoke,
  );
}
