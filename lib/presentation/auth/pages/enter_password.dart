import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class EnterPasswordPage extends StatelessWidget {
  const EnterPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 80),
        child: Column(
          children: [
            _signin(context),
            SizedBox(height: 20),
            _password(context),
            SizedBox(height: 20),
            _continueButton(),
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
      style: const TextStyle(color: Color(0xFF1F2937)),
      decoration: InputDecoration(
        hintText: 'Enter Your Password',
        prefixIcon: const Icon(Icons.lock_outlined),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }

  Widget _continueButton() {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
        onPressed: () {
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
