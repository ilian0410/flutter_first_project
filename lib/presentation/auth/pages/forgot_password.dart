import 'package:final_flutter_project/common/helpr/navigator/app_navigator.dart';
import 'package:final_flutter_project/common/helpr/navigator/widgets/button/basic_app.dart';
import 'package:final_flutter_project/presentation/auth/pages/enter_password.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

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
            _email(context),
            SizedBox(height: 20),
            _continueboutton(context),
            
          ],
        ),
      ),
    );
  }

  Widget _signin(BuildContext context) {
    return const Text(
      'Forgot Password',
      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    );
  }

  Widget _email(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Color(0xFFF5F5F7)),
      decoration: InputDecoration(
        hintText: 'Enter Your Email',
        prefixIcon: const Icon(Icons.email_outlined),
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

  
}
