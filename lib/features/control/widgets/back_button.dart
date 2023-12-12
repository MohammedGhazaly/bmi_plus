import 'package:bmi_plus/models/gender_model.dart';
import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
    required this.gender,
  });

  final GenderModel gender;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
