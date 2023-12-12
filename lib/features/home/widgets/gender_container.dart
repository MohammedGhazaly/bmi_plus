import 'package:flutter/material.dart';

class GenderContainer extends StatelessWidget {
  final String gender;
  final Color color;
  final IconData icon;
  const GenderContainer({
    super.key,
    required this.gender,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 64,
          ),
          Text(
            gender,
            style: TextStyle(
              fontSize: 32,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
