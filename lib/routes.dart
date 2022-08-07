import 'package:blue_lancer/auth/create_account_screen.dart';
import 'package:blue_lancer/auth/login_screen.dart';
import 'package:blue_lancer/landing_screen.dart';
import 'package:blue_lancer/onboarding.dart';
import 'package:flutter/cupertino.dart';

class Routes {
  static const onboardingScreen = '/onboarding';
  static const landingScreen = '/landing-screen';
  static const loginScreen = '/auth/login';
  static const createAccountScreen = '/auth/create_account';
  // static const

  static final routes =
      // <String, Widf>
      {
    onboardingScreen: (BuildContext context) => OnboardingScreen(),
    loginScreen: (BuildContext context) => LoginScreen(),
    landingScreen: (BuildContext context) => LandingScreen(),
    createAccountScreen: (BuildContext context) => CreateAccountScreen(),
  };
}
