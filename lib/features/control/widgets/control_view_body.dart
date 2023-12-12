import 'package:bmi_plus/features/control/widgets/cart_view_gender_and_weight_pciker.dart';
import 'package:bmi_plus/features/control/widgets/control_view_height_picker.dart';
import 'package:bmi_plus/features/control/widgets/height_widget.dart';
import 'package:bmi_plus/models/gender_model.dart';
import 'package:flutter/material.dart';

class ControlViewBody extends StatelessWidget {
  final GenderModel gender;

  const ControlViewBody({super.key, required this.gender});

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
