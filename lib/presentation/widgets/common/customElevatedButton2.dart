import 'package:flutter/material.dart';
import 'package:internshala/main.dart';

import '../../themes/colors.dart';

class CustomElevatedButton2 extends StatelessWidget {
  String buttonText;
  void Function()? onPressed;

  CustomElevatedButton2({super.key, required this.buttonText, this.onPressed});

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onPressed,
      child: Container(
          decoration: BoxDecoration(
              color: AppColors.white,
              border: Border.all(color: AppColors.primaryBlue),
              borderRadius: BorderRadius.circular(screenHeight * 0.005)),
          padding: EdgeInsets.symmetric(
              vertical: screenHeight * 0.01, horizontal: screenWidth * 0.03),
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(
                  color: AppColors.primaryBlue, fontWeight: FontWeight.bold),
            ),
          )),
    );
  }
}
