import 'package:blue_lancer/onboarding.dart';
import 'package:blue_lancer/routes.dart';
import 'package:blue_lancer/theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('assets/google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
  GoogleFonts.config.allowRuntimeFetching = false;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: BlueLancerTheme.lightTheme,
      darkTheme: BlueLancerTheme.darkTheme,
      // theme.copyWith(
      //   colorScheme:
      //   ColorScheme.fromSeed(
      //     seedColor: Color.fromRGBO(47, 84, 235, 1),
      //     brightness: Brightness.light,
      //   ),
      // ),
      //     ThemeData.dark().copyWith(
      //   colorScheme: ColorScheme.fromSeed(
      //     brightness: Brightness.dark,
      //     seedColor: const Color.fromRGBO(47, 84, 235, 1),
      //   ),
      //   textTheme: GoogleFonts.dmSansTextTheme().copyWith(
      //     labelLarge: const TextStyle(
      //       fontWeight: FontWeight.w500,
      //       fontSize: 16,
      //     ),
      //   ),
      //   elevatedButtonTheme: ElevatedButtonThemeData(
      //     style: ElevatedButton.styleFrom(
      //       padding: const EdgeInsets.all(16),
      //       shape: const RoundedRectangleBorder(
      //         borderRadius: BorderRadius.all(Radius.circular(8)),
      //       ),
      //     ),
      //   ),
      //   textButtonTheme: TextButtonThemeData(
      //     style: ElevatedButton.styleFrom(
      //       padding: const EdgeInsets.all(16),
      //       shape: const RoundedRectangleBorder(
      //         borderRadius: BorderRadius.all(Radius.circular(8)),
      //       ),
      //     ),
      //   ),
      // ),

      home: const OnboardingScreen(),
      routes: Routes.routes,
      // routes: ,
    );
  }
}
