import 'package:final_flutter_project/common/helpr/navigator/app_navigator.dart';
import 'package:final_flutter_project/common/helpr/navigator/widgets/button/basic_app.dart';
import 'package:final_flutter_project/presentation/auth/pages/forgot_password.dart';
import 'package:final_flutter_project/presentation/auth/pages/gender_and_age_selection.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class EnterPasswordPage extends StatelessWidget {
  const EnterPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppbar(title: const Text('Enter Password')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
        child: Column(
          children: [
            _signin(context),
            SizedBox(height: 20),
            _password(context),
            SizedBox(height: 20),
            _continueButton(context),
            SizedBox(height: 20),
            _forgotPassword(context),
          ],
        ),
      ),
    );
  }

  Widget _signin(BuildContext context) {
    return const Text(
      'Sign in',
      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    );
  }

  Widget _password(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Color(0xFFF5F5F7)),
      decoration: InputDecoration(
        hintText: 'Enter Your Password',
        prefixIcon: const Icon(Icons.lock_outlined),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }

  Widget _continueButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const GenderAndAgeSelectionPage(),
            ),
          );
        },
        child: const Text(
          'Continue',
          style: TextStyle(fontSize: 16, color: Color(0xFF6366F1)),
        ),
      ),
    );
  }

  RichText _forgotPassword(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: 'Forgot your password? '),
          TextSpan(
            text: 'Reset it',
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                AppNavigator.push(context, const ForgotPasswordPage());
              },
            style: const TextStyle(
              color: Colors.blue,
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}
