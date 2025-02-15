import 'package:flutter/material.dart';

class AppColors {
  static ColorScheme appColorScheme = const ColorScheme(
    primary: AppColors.background,
    secondary: AppColors.primary,
    surface: AppColors.primary,
    error: AppColors.error,
    onPrimary: AppColors.primary,
    onSecondary: AppColors.primary,
    onSurface: AppColors.onPrimary,
    onError: AppColors.primary,
    brightness: Brightness.light,
  );

  static const Color primary = Color(0xFFFFFFFF);
  static const Color onPrimary = Color(0xFF2D2D2D);

  // static const Color secondary = Color(0xFF0066CC);
  static const Color secondaryVariant = Color(0xFFC4E59E);
  static const Color secondaryVariantLight = Color(0xFFECF2E7);

  static const Color background = Color(0xFFF8F8F8);
  static const Color ternary = Color(0xFFE36DA6);
  static const Color fourth = Color(0xFF5C5C5C);
  static const Color fifth = Color(0xFF262F71);
  static const Color sixth = Color(0xFF494949);
  static const Color seventh = Color(0xFFF0B3CD);
  static const Color eight = Color(0xFF80ABDB);
  static const Color nine = Color(0xFFF0B3CD);
  static const Color ten = Color(0xFF0098D0);

  static const Color error = Color(0xFFFF0000);
}
