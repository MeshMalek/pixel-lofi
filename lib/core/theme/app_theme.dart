import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  static ThemeData pixelCozy() {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.background,

      colorScheme: const ColorScheme.dark(
        surface: AppColors.surface,
        primary: AppColors.accent,
      ),

      textTheme: const TextTheme(
        titleLarge: TextStyle(
          fontFamily: 'PixelFont',
          fontSize: 22,
          fontWeight: FontWeight.w400,
          color: AppColors.textPrimary,
        ),
        bodyMedium: TextStyle(
          fontFamily: 'PixelFont',
          fontSize: 22,
          color: AppColors.textPrimary,
          height: 1.2,
        ),
      ),

      cardTheme: CardThemeData(
        color: AppColors.surface,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
