import 'package:flutter/material.dart';

class AppColors {
  const AppColors._();

  static const primary = Color(0xFF9A5632);
  static const couponPrimary = Color(0xFFC16B3E);
  static const couponSurface = Color(0xFFFDF9F7);
  static const header = Color(0xFF4B4E4B);
  static const apply = Color(0xFF874B2C);
  static const promoText = Color(0xFF7D817D);
  static const critical = Color(0xFFB82B14);
  static const success = Color(0xFF316836);
  static const scaffold = Color(0xFFFFFFFF);
  static const divider = Color(0xFFAD6038);
}

class AppTheme {
  const AppTheme._();

  static ThemeData get light {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,
        primary: AppColors.primary,
        secondary: AppColors.couponSurface,
        background: AppColors.scaffold,
        surface: AppColors.scaffold,
      ),
      scaffoldBackgroundColor: AppColors.scaffold,
      useMaterial3: true,
      textTheme: _textTheme,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: AppColors.header,
        ),
        iconTheme: IconThemeData(color: AppColors.header),
      ),
      cardTheme: CardThemeData(
        color: AppColors.couponSurface,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      ),
    );
  }

  static const TextTheme _textTheme = TextTheme(
    displayLarge: TextStyle(
      fontSize: 34,
      fontWeight: FontWeight.w700,
      color: AppColors.header,
      height: 1.1,
    ),
    titleLarge: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: AppColors.header,
    ),
    titleMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: AppColors.header,
    ),
    bodyLarge: TextStyle(fontSize: 16, color: AppColors.header, height: 1.5),
    bodyMedium: TextStyle(
      fontSize: 14,
      color: AppColors.promoText,
      height: 1.5,
    ),
    labelLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
  );
}
