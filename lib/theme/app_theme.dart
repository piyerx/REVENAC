import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Colors from blueprint [cite: 2]
  static const Color primaryGreen = Color(0xFF2E8B57);
  static const Color accentBlue = Color(0xFF00A4FF);
  static const Color backgroundWhite = Color(0xFFFFFFFF);
  static const Color cardGrey = Color(0xFFF7F9FA);

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: backgroundWhite,

      // Color Scheme
      colorScheme: ColorScheme.fromSeed(
        seedColor: primaryGreen,
        primary: primaryGreen,
        secondary: accentBlue,
        background: backgroundWhite,
        surface: cardGrey, // Cards use very light grey [cite: 2]
      ),

      // Typography [cite: 2]
      textTheme: GoogleFonts.robotoTextTheme().copyWith(
        titleLarge: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold), // Title 20-24
        headlineSmall: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600), // Headline 16-18
        bodyMedium: const TextStyle(fontSize: 14), // Body 14
        bodySmall: const TextStyle(fontSize: 12), // Caption 12
      ),

      // Card Theme [cite: 2]
      cardTheme: CardTheme(
        color: cardGrey,
        elevation: 2, // Subtle elevation 2-6dp
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16), // Corner radius 12-16px
        ),
      ),

      // AppBar Theme
      appBarTheme: const AppBarTheme(
        backgroundColor: backgroundWhite,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black87),
        titleTextStyle: TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}