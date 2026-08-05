import 'package:final_flutter_project/core/configs/assets/app_vectors.dart';
import 'package:final_flutter_project/core/configs/theme/app_colors.dart';
import 'package:final_flutter_project/presentation/auth/pages/signin.dart';
import 'package:final_flutter_project/presentation/splash/bloc/splash_cubit.dart';
import 'package:final_flutter_project/presentation/splash/bloc/splash_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashState>(
      listener: (context, state) {
        if (state is Unauthenticated) {
          Navigator.pushReplacement(
            context, 
            MaterialPageRoute(builder: (context) => const SigninPage())
          );
        } 
      },
      child: Scaffold(
        backgroundColor: AppColors.primary,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(AppVectors.appLogo, height: 220, width: 220),
              const SizedBox(height: 20),
              SizedBox(
                width: 28,
                height: 28,
                child: CircularProgressIndicator(
                  strokeWidth: 2.5,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
