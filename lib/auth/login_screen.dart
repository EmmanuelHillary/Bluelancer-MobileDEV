import 'package:blue_lancer/auth/auth_textfield.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        foregroundColor: Theme.of(context).colorScheme.onBackground,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome Back!',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Text(
              'Kindly login to your account',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Form(
              child: Column(
                children: [
                  AuthTextField(
                    labelText: 'Email address',
                    hintText: 'examplews@gmail.com',
                  ),
                  AuthTextField(
                    labelText: 'Password',
                    hintText: '••••••••',
                    icon: Icon(Icons.visibility),
                    obscureText: true,
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Text(
                'Forgot Password',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Login'),
              ),
            ),
            Wrap(
              children: [
                Text(
                  'Don\'t have an account? ',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Create account',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          decoration: TextDecoration.underline,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
