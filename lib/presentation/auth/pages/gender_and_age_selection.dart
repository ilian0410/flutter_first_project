import 'dart:ui';

import 'package:final_flutter_project/common/helpr/bottom_sheet/app_bottom_sheet.dart';
import 'package:final_flutter_project/common/helpr/navigator/widgets/button/basic_app.dart';
import 'package:final_flutter_project/core/configs/theme/app_colors.dart';
import 'package:final_flutter_project/presentation/auth/bloc/age_selection_cubit.dart';
import 'package:final_flutter_project/presentation/auth/bloc/gender_selection_cubit.dart';
import 'package:final_flutter_project/presentation/auth/widgets/ages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GenderAndAgeSelectionPage extends StatelessWidget {
  const GenderAndAgeSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppbar(),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => GenderSelectionCubit()),
          BlocProvider(create: (context) => AgeSelectionCubit()),
        ],
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _tellUs(),
                  const SizedBox(height: 30),
                  _genders(),
                  const SizedBox(height: 30),
                  _howOldAreYou(),
                  const SizedBox(height: 30),
                  _age(),
                ],
              ),
            ),
            const Spacer(),
            _finishButton(),
          ],
        ),
      ),
    );
  }

  Widget _tellUs() {
    return Text(
      "Tell us About yourself",
      style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    );
  }

  Widget _genders() {
    return BlocBuilder<GenderSelectionCubit, int>(
      builder: (context, selectedGender) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            gendertile(context, 1, 'Men'),
            const SizedBox(width: 20),
            gendertile(context, 2, 'Women'),
          ],
        );
      },
    );
  }

  Expanded gendertile(BuildContext context, int genderindex, String gender) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: () {
          context.read<GenderSelectionCubit>().selectGender(genderindex);
        },
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            color:
                context.read<GenderSelectionCubit>().selectedIndex ==
                    genderindex
                ? AppColors.primary
                : AppColors.secondbackground,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Text(
              gender,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ),
    );
  }

  Widget _howOldAreYou() {
    return Text(
      "How old are you?",
      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
    );
  }

  Widget _age() {
    return BlocBuilder<AgeSelectionCubit, String>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            AppBottomSheet().display(
              context,
const Ages(),
               );
          },
          child: Container(
            height: 60,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: AppColors.secondbackground,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text(state), const Icon(Icons.keyboard_arrow_down)],
            ),
          ),
        );
      },
    );
  }

  Widget _finishButton() {
    return Container(
      height: 100,
      color: AppColors.secondbackground,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Center(
        child: ElevatedButton(
          onPressed: () {
            // Handle finish button press
          },
          child: const Text(
            'Finish',
            style: TextStyle(fontSize: 16, color: Color(0xFF6366F1)),
          ),
        ),
      ),
    );
  }
}
