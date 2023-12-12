import 'package:bmi_plus/features/control/widgets/height_widget.dart';
import 'package:bmi_plus/models/gender_model.dart';
import 'package:flutter/material.dart';

class ControlViewHeightPicker extends StatefulWidget {
  const ControlViewHeightPicker({
    super.key,
    required this.gender,
  });

  final GenderModel gender;

  @override
  State<ControlViewHeightPicker> createState() =>
      _ControlViewHeightPickerState();
}

class _ControlViewHeightPickerState extends State<ControlViewHeightPicker> {
  int selectedHeight = 50;
  int initialHeight = 50;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.gender.color,
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 12,
            ),
            const Text(
              "Height",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w900,
              ),
            ),
            const Text(
              "(CM)",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w900,
              ),
            ),
            Expanded(
                child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: 500,
              itemBuilder: (context, index) {
                int weight = initialHeight + index;
                return InkWell(
                  onTap: () {
                    selectedHeight = initialHeight + index;
                    setState(() {});
                  },
                  child: HeightWidget(
                    weight: weight,
                    isSelected: selectedHeight == initialHeight + index,
                    color: widget.gender.color,
                  ),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
