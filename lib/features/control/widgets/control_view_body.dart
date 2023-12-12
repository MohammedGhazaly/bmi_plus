import 'package:bmi_plus/core/app_colors.dart';
import 'package:bmi_plus/features/control/widgets/cart_view_gender_and_weight_pciker.dart';
import 'package:bmi_plus/features/control/widgets/control_view_height_picker.dart';
import 'package:bmi_plus/models/gender_model.dart';
import 'package:flutter/material.dart';

class ControlViewBody extends StatelessWidget {
  final GenderModel gender;

  const ControlViewBody({super.key, required this.gender});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            Expanded(
              flex: 4,
              child: SafeArea(
                child: ControlViewGenderAndWeightPicker(gender: gender),
              ),
            ),
            Expanded(
              flex: 2,
              child: ControlViewHeightPicker(gender: gender),
            ),
          ],
        ),
        Positioned(
          bottom: 8,
          left: MediaQuery.sizeOf(context).width * 2 / 3,
          child: FractionalTranslation(
            translation: Offset(-0.5, 0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 32),
                backgroundColor: AppColors.yelloColor,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {},
              child: Text(
                "Calc",
              ),
            ),
          ),
        )
      ],
    );
  }
}
