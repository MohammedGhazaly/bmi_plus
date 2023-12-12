import 'package:bmi_plus/features/control/widgets/weight_widget.dart';
import 'package:flutter/material.dart';

class WeightPickerListView extends StatefulWidget {
  final Color color;
  const WeightPickerListView({
    super.key,
    required this.color,
  });

  @override
  State<WeightPickerListView> createState() => _WeightPickerListViewState();
}

class _WeightPickerListViewState extends State<WeightPickerListView> {
  int selectedWeight = 10;
  int initialWeight = 10;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
            color: widget.color,
          ),
        );
      },
    );
  }
}
