import 'package:final_flutter_project/common/helpr/navigator/app_navigator.dart';
import 'package:final_flutter_project/common/helpr/navigator/widgets/button/basic_app.dart';
import 'package:final_flutter_project/presentation/auth/pages/enter_password.dart';
import 'package:final_flutter_project/presentation/auth/pages/signin.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppbar(
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
        child: Column(
          children: [
            _signin(context),
            SizedBox(height: 20),
            _firstName(context),
            SizedBox(height: 20),
            _lastName(context),
            SizedBox(height: 20),
            _email(context),
            SizedBox(height: 20),
            _password(context),
            SizedBox(height: 20),
            _continueboutton(context),
            SizedBox(height: 20),
            _createAccount(context),
          ],
        ),
      ),
    );
  }

  Widget _signin(BuildContext context) {
    return const Text(
      'Create Account',
      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    );
  }
Widget _firstName(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Color( 0xFFF5F5F7)),
      decoration: InputDecoration(
        hintText: 'Enter Your First Name',
        prefixIcon: const Icon(Icons.person_outlined),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
Widget _lastName(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Color( 0xFFF5F5F7)),
      decoration: InputDecoration(
        hintText: 'Enter Your Last Name',
        prefixIcon: const Icon(Icons.person_outlined),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
  Widget _email(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Color(0xFFF5F5F7)),
      decoration: InputDecoration(
        hintText: 'Enter Your Email adress',
        prefixIcon: const Icon(Icons.email_outlined),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      ),
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


  Widget _continueboutton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
        onPressed: () {
          AppNavigator.push(context, const EnterPasswordPage());
        },
        child: const Text(
          'Continue',
          style: TextStyle(fontSize: 16, color: Color(0xFF6366F1)),
        ),
      ),
    );
  }

  RichText _createAccount(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: 'Do you have an account? '),
          TextSpan(
            text: 'Sign in',
            recognizer: TapGestureRecognizer()
              ..onTap = () {
AppNavigator.pushReplacement(context, const SigninPage());
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
