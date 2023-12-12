import 'package:bmi_plus/models/gender_model.dart';
import 'package:flutter/material.dart';

class ControlViewLeft extends StatelessWidget {
  const ControlViewLeft({
    super.key,
    required this.gender,
  });

  final GenderModel gender;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: gender.color,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "BMI",
                  style: TextStyle(
                      fontSize: 18,
                      color: gender.color,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 64,
        ),
        Text(
          gender.type,
          style: TextStyle(
            fontSize: 32,
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 24,
        ),
        Icon(
          gender.icon,
          color: gender.color,
          size: 72,
        ),
        SizedBox(
          height: 24,
        ),
        Text(
          "Weight (KG)",
          style: TextStyle(
            fontSize: 24,
            color: Colors.black,
            // fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}
