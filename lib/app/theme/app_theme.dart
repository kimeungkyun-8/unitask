import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get light => ThemeData.light(useMaterial3: true).copyWith(
    brightness: .light,
    visualDensity: .adaptivePlatformDensity,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      titleTextStyle: TextStyle(
        fontWeight: .bold,
        color: Colors.black,
        fontSize: 24,
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      foregroundColor: Colors.white,
      backgroundColor: Color(0xFF3B82F6),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: Color(0xFF3B82F6)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Color(0xFF3B82F6),
        padding: .symmetric(vertical: 20),
        shape: RoundedRectangleBorder(borderRadius: .circular(12)),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Color(0xFFF9FAFB),
      prefixIconColor: Color(0xFF9CA3AF),

      hintStyle: TextStyle(color: Color(0xFF9CA3AF)),
      border: OutlineInputBorder(
        borderRadius: .circular(12),
        borderSide: BorderSide.none,
      ),
    ),
    cardTheme: const CardThemeData(elevation: 4, color: Colors.white),
  );

  static ThemeData get dark => ThemeData.dark(useMaterial3: true).copyWith(
    brightness: .dark,
    visualDensity: .adaptivePlatformDensity,
    scaffoldBackgroundColor: Color(0xFF111827),
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xFF111827),
      foregroundColor: Colors.white,
      titleTextStyle: TextStyle(
        fontWeight: .bold,
        color: Colors.white,
        fontSize: 24,
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      foregroundColor: Colors.white,
      backgroundColor: Color(0xFF3B82F6),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: Color(0xFF3B82F6)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Color(0xFF3B82F6),
        padding: .symmetric(vertical: 24),
        shape: RoundedRectangleBorder(borderRadius: .circular(12)),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Color(0xFF1F2937),
      border: OutlineInputBorder(
        borderRadius: .circular(12),
        borderSide: BorderSide.none,
      ),
    ),
  );
}
