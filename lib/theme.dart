import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class BlueLancerTheme {
  static final textTheme =
      GoogleFonts.dmSansTextTheme(const TextTheme()).copyWith(
    button: const TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 16,
    ),
  );

  static final elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.all(16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
    ),
  );

  static final textButtonTheme = TextButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.all(16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
    ),
  );

  static final lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color.fromRGBO(47, 84, 235, 1),
      brightness: Brightness.light,
    ),
    textTheme: textTheme,
    elevatedButtonTheme: elevatedButtonTheme,
    textButtonTheme: textButtonTheme,
    // useMaterial3: true,
  );

  static final darkTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color.fromRGBO(47, 84, 235, 1),
      brightness: Brightness.dark,
    ),
    // fontFamily: GoogleFonts.dmSans().fontFamily,
    textTheme: textTheme,
    elevatedButtonTheme: elevatedButtonTheme,
    textButtonTheme: textButtonTheme,
    // useMaterial3: true,
  );
}
