import 'package:flutter/material.dart';

import 'auth_textfield.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({Key? key}) : super(key: key);

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
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
              'Create an account',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Text(
              'Let\'s get you started, It\'ll only take few minutes.',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Form(
              child: Column(
                children: [
                  AuthTextField(
                    labelText: 'Full name',
                    hintText: 'John Doe',
                  ),
                  AuthTextField(
                    labelText: 'User name',
                    hintText: 'olasdc',
                  ),
                  AuthTextField(
                    labelText: 'Email address',
                    hintText: 'examplews@gmail.com',
                  ),
                  AuthTextField(
                    labelText: 'Phone number',
                    hintText: '+234 801 234 5679',
                  ),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Continue'),
              ),
            ),
            Wrap(
              children: [
                Text(
                  'Already have an account? ',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Login',
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
