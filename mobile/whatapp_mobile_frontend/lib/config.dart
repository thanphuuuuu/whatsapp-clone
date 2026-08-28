import 'package:flutter/material.dart';

class AppColors {
  static const primary = Color(0xFF00A884);
  static const primaryForegroundLight = Color(0xFFFFFFFF);
  static const primaryForegroundDark = Color(0xFF052E24);

  static const backgroundLight = Color(0xFFFFFFFF);
  static const backgroundDark = Color(0xFF0B141A);

  static const foregroundLight = Color(0xFF111827);
  static const foregroundDark = Color(0xFFE9EDEF);

  static const mutedLight = Color(0xFFF3F4F6);
  static const mutedDark = Color(0xFF1F2C33);

  static const mutedForegroundLight = Color(0xFF6B7280);
  static const mutedForegroundDark = Color(0xFF8696A0);

  static const secondaryLight = Color(0xFFEDEDED);
  static const secondaryDark = Color(0xFF202C33);

  static const borderLight = Color(0xFFE5E7EB);
  static const borderDark = Color(0xFF2A3942);

  static const destructiveLight = Color(0xFFE11D48);
  static const destructiveDark = Color(0xFFF87171);

  static const success = Color(0xFF22C55E);
  static const ring = Color(0xFF00A884);
}

class AppRadius {
  static const sm = 8.0;
  static const bubble = 16.0;
  static const full = 999.0;
}

class AppSpacing {
  static const xs = 4.0;
  static const sm = 8.0;
  static const md = 16.0;
}

class AppTextStyles {
  static const headingLarge = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );
  static const headingSmall = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static const body = TextStyle(fontSize: 14, fontWeight: FontWeight.w400);
  static const caption = TextStyle(fontSize: 12, fontWeight: FontWeight.w400);
  static const label = TextStyle(fontSize: 14, fontWeight: FontWeight.w500);
}

class AppTheme {
  static ThemeData light = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.backgroundLight,
    colorScheme: const ColorScheme.light(
      primary: AppColors.primary,
      onPrimary: AppColors.primaryForegroundLight,
      secondary: AppColors.secondaryLight,
      onSecondary: AppColors.foregroundLight,
      surface: AppColors.backgroundLight,
      onSurface: AppColors.foregroundLight,
      error: AppColors.destructiveLight,
    ),
    dividerColor: AppColors.borderLight,
    textTheme:
        const TextTheme(
          headlineMedium: AppTextStyles.headingLarge,
          titleLarge: AppTextStyles.headingSmall,
          bodyMedium: AppTextStyles.body,
          bodySmall: AppTextStyles.caption,
          labelLarge: AppTextStyles.label,
        ).apply(
          bodyColor: AppColors.foregroundLight,
          displayColor: AppColors.foregroundLight,
        ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.mutedLight,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppRadius.sm),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppRadius.sm),
        borderSide: const BorderSide(color: AppColors.ring, width: 1.5),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.primaryForegroundLight,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.sm),
        ),
      ),
    ),
  );

  static ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.backgroundDark,
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primary,
      onPrimary: AppColors.primaryForegroundDark,
      secondary: AppColors.secondaryDark,
      onSecondary: AppColors.foregroundDark,
      surface: AppColors.backgroundDark,
      onSurface: AppColors.foregroundDark,
      error: AppColors.destructiveDark,
    ),
    dividerColor: AppColors.borderDark,
    textTheme:
        const TextTheme(
          headlineMedium: AppTextStyles.headingLarge,
          titleLarge: AppTextStyles.headingSmall,
          bodyMedium: AppTextStyles.body,
          bodySmall: AppTextStyles.caption,
          labelLarge: AppTextStyles.label,
        ).apply(
          bodyColor: AppColors.foregroundDark,
          displayColor: AppColors.foregroundDark,
        ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.mutedDark,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppRadius.sm),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppRadius.sm),
        borderSide: const BorderSide(color: AppColors.ring, width: 1.5),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.primaryForegroundDark,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.sm),
        ),
      ),
    ),
  );
}
