import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  // Cores principais
  static const Color primaryColor = Color(0xFF6C63FF);
  static const Color secondaryColor = Color(0xFF00BFA6);
  static const Color accentColor = Color(0xFFFF6584);
  
  // Cores de fundo
  static const Color backgroundLight = Color(0xFFF8F9FA);
  static const Color backgroundDark = Color(0xFF1A1A2E);
  
  // Cores de texto
  static const Color textPrimaryLight = Color(0xFF2D3436);
  static const Color textSecondaryLight = Color(0xFF636E72);
  static const Color textPrimaryDark = Color(0xFFF8F9FA);
  static const Color textSecondaryDark = Color(0xFFB2BEC3);
  
  // Cores de estado
  static const Color successColor = Color(0xFF00B894);
  static const Color errorColor = Color(0xFFFF7675);
  static const Color warningColor = Color(0xFFFDCB6E);
  static const Color infoColor = Color(0xFF74B9FF);
  
  // Tema claro
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      primaryColor: primaryColor,
      scaffoldBackgroundColor: backgroundLight,
      colorScheme: const ColorScheme.light(
        primary: primaryColor,
        secondary: secondaryColor,
        error: errorColor,
        surface: Colors.white,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: textPrimaryLight,
        onError: Colors.white,
      ),
      appBarTheme: AppBarTheme(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: textPrimaryLight,
        titleTextStyle: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
          color: textPrimaryLight,
        ),
      ),
      cardTheme: CardTheme(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          textStyle: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: primaryColor,
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
          side: const BorderSide(color: primaryColor, width: 1.5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          textStyle: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: primaryColor,
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          textStyle: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.grey.shade100,
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: const BorderSide(color: primaryColor, width: 1.5),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: const BorderSide(color: errorColor, width: 1.5),
        ),
        hintStyle: TextStyle(
          fontSize: 14.sp,
          color: textSecondaryLight,
        ),
      ),
      textTheme: TextTheme(
        displayLarge: TextStyle(
          fontSize: 32.sp,
          fontWeight: FontWeight.bold,
          color: textPrimaryLight,
        ),
        displayMedium: TextStyle(
          fontSize: 28.sp,
          fontWeight: FontWeight.bold,
          color: textPrimaryLight,
        ),
        displaySmall: TextStyle(
          fontSize: 24.sp,
          fontWeight: FontWeight.w600,
          color: textPrimaryLight,
        ),
        headlineLarge: TextStyle(
          fontSize: 22.sp,
          fontWeight: FontWeight.w600,
          color: textPrimaryLight,
        ),
        headlineMedium: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
          color: textPrimaryLight,
        ),
        headlineSmall: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
          color: textPrimaryLight,
        ),
        bodyLarge: TextStyle(
          fontSize: 16.sp,
          color: textPrimaryLight,
        ),
        bodyMedium: TextStyle(
          fontSize: 14.sp,
          color: textPrimaryLight,
        ),
        bodySmall: TextStyle(
          fontSize: 12.sp,
          color: textSecondaryLight,
        ),
      ),
    );
  }
  
  // Tema escuro
  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      primaryColor: primaryColor,
      scaffoldBackgroundColor: backgroundDark,
      colorScheme: const ColorScheme.dark(
        primary: primaryColor,
        secondary: secondaryColor,
        error: errorColor,
        surface: Color(0xFF16213E),
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: textPrimaryDark,
        onError: Colors.white,
      ),
      appBarTheme: AppBarTheme(
        elevation: 0,
        centerTitle: true,
        backgroundColor: backgroundDark,
        foregroundColor: textPrimaryDark,
        titleTextStyle: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
          color: textPrimaryDark,
        ),
      ),
      cardTheme: CardTheme(
        elevation: 2,
        color: const Color(0xFF16213E),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: const Color(0xFF16213E),
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide.none,
        ),
        hintStyle: TextStyle(
          fontSize: 14.sp,
          color: textSecondaryDark,
        ),
      ),
      textTheme: TextTheme(
        displayLarge: TextStyle(
          fontSize: 32.sp,
          fontWeight: FontWeight.bold,
          color: textPrimaryDark,
        ),
        bodyLarge: TextStyle(
          fontSize: 16.sp,
          color: textPrimaryDark,
        ),
        bodyMedium: TextStyle(
          fontSize: 14.sp,
          color: textPrimaryDark,
        ),
        bodySmall: TextStyle(
          fontSize: 12.sp,
          color: textSecondaryDark,
        ),
      ),
    );
  }
}
