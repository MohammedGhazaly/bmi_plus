import 'package:bmi_plus/features/control/widgets/control_view_body.dart';
import 'package:bmi_plus/models/gender_model.dart';
import 'package:flutter/material.dart';

class ControlView extends StatelessWidget {
  final GenderModel gender;
  const ControlView({super.key, required this.gender});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ControlViewBody(gender: gender),
    );
  }
}
