import 'package:bmi_plus/features/control/widgets/cart_view_gender_and_weight_pciker.dart';
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

class ControlViewHeightPicker extends StatelessWidget {
  const ControlViewHeightPicker({
    super.key,
    required this.gender,
  });

  final GenderModel gender;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: gender.color,
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 12,
            ),
            Text(
              "Height",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w900,
              ),
            ),
            Text(
              "(CM)",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w900,
              ),
            ),
            Expanded(
                child: HeightPickerListView(
              color: gender.color,
            ))
          ],
        ),
      ),
    );
  }
}

class HeightPickerListView extends StatefulWidget {
  final Color color;

  const HeightPickerListView({super.key, required this.color});

  @override
  State<HeightPickerListView> createState() => HeightPickerListViewState();
}

class HeightPickerListViewState extends State<HeightPickerListView> {
  int selectedHeight = 50;
  int initialHeight = 50;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
            color: widget.color,
          ),
        );
      },
    );
  }
}

class HeightWidget extends StatelessWidget {
  final int weight;
  final bool isSelected;
  final Color color;
  const HeightWidget(
      {super.key,
      required this.weight,
      required this.isSelected,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: isSelected ? Colors.white : Colors.transparent,
          borderRadius: BorderRadius.circular(16)),
      child: Text(
        weight.toString(),
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
          color: isSelected ? color : Colors.white,
          // color: Colors.black,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.w900,
        ),
      ),
    );
  }
}
