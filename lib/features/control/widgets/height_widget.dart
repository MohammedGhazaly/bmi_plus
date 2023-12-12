import 'package:flutter/material.dart';

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
      duration: const Duration(milliseconds: 500),
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.all(8),
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
