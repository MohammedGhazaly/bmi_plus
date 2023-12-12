import 'package:bmi_plus/features/results/widgets/results_view_body.dart';
import 'package:flutter/material.dart';

class ResultsView extends StatelessWidget {
  final double bmi;
  final Color color;
  const ResultsView({super.key, required this.bmi, required this.color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: ResultsViewBody(bmi: bmi),
    );
  }
}
