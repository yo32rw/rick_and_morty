import 'package:flutter/material.dart';

abstract final class AppColors {
  static const whiteSmoke = Color(0xFFF8F8F8);
  static const white = Color(0xFFFFFFFF);
  static const irisBlue = Color(0xFF11B0C8);
  static const nero = Color(0xFF1F1F1F);
  static const grey = Color(0xFF808080);

  static const lightColorScheme = ColorScheme.light(
    primary: AppColors.whiteSmoke,
  );
}
