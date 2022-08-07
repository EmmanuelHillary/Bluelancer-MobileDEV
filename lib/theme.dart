import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var theme = ThemeData(
  // primarySwatch: Colors.amber,
  // colorScheme: ColorScheme.fromSeed(
  //   seedColor: const Color.fromRGBO(47, 84, 235, 1),
  // ),
  colorSchemeSeed: const Color.fromRGBO(47, 84, 235, 1),
  // fontFamily: GoogleFonts.dmSans().fontFamily,
  textTheme: GoogleFonts.dmSansTextTheme().copyWith(
    button: const TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 16,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.all(16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.all(16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
    ),
  ),
);

var ll = TextTheme();

var darkTheme = ThemeData.dark().copyWith(
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color.fromRGBO(47, 84, 235, 1),
  ),
  textTheme: GoogleFonts.dmSansTextTheme().copyWith(
    button: const TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 16,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.all(16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.all(16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
    ),
  ),
);
