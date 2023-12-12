import 'package:bmi_plus/features/control/widgets/control_view_left.dart';
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
          flex: 3,
          child: SafeArea(
            child: ControlViewLeft(gender: gender),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: gender.color,
            child: Column(),
          ),
        ),
      ],
    );
  }
}
