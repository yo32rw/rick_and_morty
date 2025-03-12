import 'package:flutter/material.dart';

abstract final class AppTextTheme {
  static const subtitleBold = TextStyle(
    fontSize: 16,
    height: 1.4,
    fontWeight: FontWeight.w700,
  );
  static const bodyBold = TextStyle(
    fontSize: 14,
    height: 1.4,
    fontWeight: FontWeight.w700,
  );
  static const bodyMedium = TextStyle(fontSize: 14, height: 1.4);
  static const captionBold = TextStyle(
    fontSize: 12,
    height: 1.4,
    fontWeight: FontWeight.w700,
  );
  static const captionMedium = TextStyle(fontSize: 12, height: 1.4);
}
