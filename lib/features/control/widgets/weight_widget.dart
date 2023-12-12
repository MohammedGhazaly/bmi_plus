import 'package:flutter/material.dart';

class WeightWidget extends StatelessWidget {
  final int weight;
  final bool isSelected;
  final Color color;

  const WeightWidget({
    super.key,
    required this.weight,
    required this.isSelected,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: AnimatedDefaultTextStyle(
        duration: const Duration(milliseconds: 300),
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: isSelected ? 32 : 18,
          color: isSelected ? color : Colors.black,
          // color: Colors.black,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.w900,
        ),
        child: Text(weight.toString()),
      ),
    );
  }
}
