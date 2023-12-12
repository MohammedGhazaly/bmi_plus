import 'package:bmi_plus/core/app_colors.dart';
import 'package:bmi_plus/features/home/widgets/gender_container.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GenderContainer(
              color: AppColors.blueColor,
              gender: "Male",
              icon: Icons.male_rounded),
        ),
        Expanded(
          child: GenderContainer(
              color: AppColors.redColor,
              gender: "Female",
              icon: Icons.female_rounded),
        ),
      ],
    );
  }
}
