import 'package:blue_lancer/auth/login_screen.dart';
import 'package:blue_lancer/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                  text: 'Blue',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Lancer',
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                    ),
                  ],
                ),
              ),
              SvgPicture.asset(
                'assets/drawables/barber_alt.svg',
              ),
              Text(
                'Let’s get started .  Lorem ipsum dolor sit amet adipscing',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(height: 72),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(Routes.loginScreen);
                  },
                  child: Text('Login'),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(Routes.createAccountScreen);
                  },
                  child: const Text('Create an account'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Theme.of(context).colorScheme.primary.withOpacity(0.1),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
