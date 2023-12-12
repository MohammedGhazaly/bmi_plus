import 'package:bmi_plus/core/app_colors.dart';
import 'package:bmi_plus/features/control/control_view.dart';
import 'package:bmi_plus/features/home/widgets/gender_container.dart';
import 'package:bmi_plus/models/gender_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              var model = GenderModel(
                  type: "Male",
                  icon: Icons.male_rounded,
                  color: AppColors.blueColor);
              Navigator.push(context, CupertinoPageRoute(builder: (context) {
                return ControlView(
                  gender: model,
                );
              }));
            },
            child: GenderContainer(
                color: AppColors.blueColor,
                gender: "Male",
                icon: Icons.male_rounded),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              var model = GenderModel(
                  type: "Female",
                  icon: Icons.female_rounded,
                  color: AppColors.redColor);
              Navigator.push(context, CupertinoPageRoute(builder: (context) {
                return ControlView(
                  gender: model,
                );
              }));
            },
            child: GenderContainer(
                color: AppColors.redColor,
                gender: "Female",
                icon: Icons.female_rounded),
          ),
        ),
      ],
    );
  }
}
