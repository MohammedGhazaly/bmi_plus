import 'package:bmi_plus/features/control/widgets/back_button.dart';
import 'package:bmi_plus/features/control/widgets/weight_widget.dart';
import 'package:bmi_plus/models/gender_model.dart';
import 'package:flutter/material.dart';

class ControlViewGenderAndWeightPicker extends StatefulWidget {
  const ControlViewGenderAndWeightPicker({
    super.key,
    required this.gender,
  });

  final GenderModel gender;

  @override
  State<ControlViewGenderAndWeightPicker> createState() =>
      _ControlViewGenderAndWeightPickerState();
}

class _ControlViewGenderAndWeightPickerState
    extends State<ControlViewGenderAndWeightPicker> {
  int selectedWeight = 10;
  int initialWeight = 10;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 12,
        ),
        CustomBackButton(gender: widget.gender),
        const SizedBox(
          height: 16,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                widget.gender.type,
                style: const TextStyle(
                  fontSize: 32,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Icon(
                widget.gender.icon,
                color: widget.gender.color,
                size: 72,
              ),
              const Text(
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
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: 300,
            itemBuilder: (context, index) {
              int weight = initialWeight + index;
              return InkWell(
                onTap: () {
                  selectedWeight = initialWeight + index;
                  setState(() {});
                },
                child: WeightWidget(
                  weight: weight,
                  isSelected: selectedWeight == initialWeight + index,
                  color: widget.gender.color,
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
