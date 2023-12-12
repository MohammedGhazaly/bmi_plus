import 'package:bmi_plus/features/control/widgets/back_button.dart';
import 'package:bmi_plus/features/control/widgets/weight_picker_list_view.dart';
import 'package:bmi_plus/features/control/widgets/weight_widget.dart';
import 'package:bmi_plus/models/gender_model.dart';
import 'package:flutter/material.dart';

class ControlViewGenderAndWeightPicker extends StatelessWidget {
  const ControlViewGenderAndWeightPicker({
    super.key,
    required this.gender,
  });

  final GenderModel gender;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 12,
        ),
        CustomBackButton(gender: gender),
        SizedBox(
          height: 16,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                gender.type,
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Icon(
                gender.icon,
                color: gender.color,
                size: 72,
              ),
              Text(
                "Weight (KG)",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  // fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: WeightPickerListView(color: gender.color),
        )
      ],
    );
  }
}
