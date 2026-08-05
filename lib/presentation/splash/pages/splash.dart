import 'package:final_flutter_project/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Column(
        children: [
             
             CircularProgressIndicator(
              color: Colors.white
              )
            
        ],
      ),
    );
  }
}
