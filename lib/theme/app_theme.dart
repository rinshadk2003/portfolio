import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData get darkTheme {
    const primaryGreen = Color(0xFF22C55E); // Green 500
    const lightGreen = Color(0xFF4ADE80);   // Accent
    const bg = Color(0xFF07130D);           // Deep green bg
    const surface = Color(0xFF0F1F17);      // Card surface
    const textMuted = Color(0xFF9CA3AF);    // Muted text

    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: bg,
      primaryColor: primaryGreen,

      colorScheme: const ColorScheme.dark(
        primary: primaryGreen,
        secondary: lightGreen,
        surface: surface,
      ),

      textTheme: GoogleFonts.interTextTheme(ThemeData.dark().textTheme).copyWith(
        displayLarge: GoogleFonts.outfit(fontWeight: FontWeight.bold, color: Colors.white),
        displayMedium: GoogleFonts.outfit(fontWeight: FontWeight.bold, color: Colors.white),
        displaySmall: GoogleFonts.outfit(fontWeight: FontWeight.bold, color: Colors.white),

        headlineLarge: GoogleFonts.outfit(fontWeight: FontWeight.w700, color: Colors.white),
        headlineMedium: GoogleFonts.outfit(fontWeight: FontWeight.w600, color: Colors.white),

        titleLarge: GoogleFonts.inter(fontWeight: FontWeight.w600, color: Colors.white),

        bodyLarge: GoogleFonts.inter(color: textMuted),
        bodyMedium: GoogleFonts.inter(color: textMuted),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryGreen,
          foregroundColor: bg,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          textStyle: GoogleFonts.inter(fontWeight: FontWeight.w600),
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: primaryGreen,
          side: const BorderSide(color: primaryGreen),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          textStyle: GoogleFonts.inter(fontWeight: FontWeight.w600),
        ),
      ),

      appBarTheme: const AppBarTheme(
        backgroundColor: surface,
        elevation: 0,
      ),
    );
  }
}