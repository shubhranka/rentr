// lib/shared/theme/rentr_theme.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Centralized color palette based on the "RENTR" UI design
class AppColors {
  static const Color primaryAccent = Color(0xFFFF6B6B); // Vibrant Coral
  static const Color baseBackground = Color(0xFFF8F8F8); // Light grey
  static const Color cardBackground = Color(0xFFFFFFFF);
  static const Color textPrimary = Color(0xFF333333);    // Darker grey
  static const Color textSecondary = Color(0xFF888888);  // Lighter grey
  static const Color borderColor = Color(0xFFEFEFEF);
}

class RentrTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: AppColors.primaryAccent,
      scaffoldBackgroundColor: AppColors.baseBackground,
      fontFamily: GoogleFonts.inter().fontFamily,
      
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.baseBackground,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: AppColors.textPrimary),
        titleTextStyle: TextStyle(
          color: AppColors.textPrimary,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.cardBackground,
        contentPadding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(color: AppColors.borderColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(color: AppColors.borderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(color: AppColors.primaryAccent, width: 1.5),
        ),
        hintStyle: const TextStyle(color: AppColors.textSecondary),
      ),
      
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryAccent,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          elevation: 2,
          shadowColor: AppColors.primaryAccent.withOpacity(0.3)
        ),
      ),
    );
  }
}