import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

class DoctoAppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
        dividerColor: greycolors800,
        backgroundColor: whiteColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: GoogleFonts.lato().fontFamily,
        textTheme: TextTheme(
          displayLarge: const TextStyle(
            color: blackColors900,
            fontSize: 34,
            fontWeight: FontWeight.w400,
          ),
          displayMedium: const TextStyle(
            color: blackColors900,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
          displaySmall: const TextStyle(
            color: blackColors900,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
          headlineMedium: const TextStyle(
            color: blackColors800,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          headlineSmall: TextStyle(
            color: greycolors800,
            fontSize: 14,
            fontFamily: GoogleFonts.sourceSansPro().fontFamily,
            fontWeight: FontWeight.w400,
          ),
          titleLarge: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
          bodyLarge: const TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w700,
          ),
          bodyMedium: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w400,
          ),
        ));
  }
}
