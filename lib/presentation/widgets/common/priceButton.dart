import 'package:flutter/material.dart';
import 'package:internshala/main.dart';

import '../../themes/colors.dart';

class PriceButton extends StatelessWidget {
  final String buttonText;
  final IconData? buttonIcon;
  const PriceButton({super.key, required this.buttonText, this.buttonIcon});

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight * 0.01,
      width: screenWidth * 0.22,
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(color: AppColors.primaryBlue),
        borderRadius: BorderRadius.circular(screenHeight * 0.03),
      ),
      padding: EdgeInsets.symmetric(vertical: screenWidth * 0.01),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (buttonIcon != null)
            Icon(
              buttonIcon,
              color: AppColors.primaryBlue,
              size: screenHeight * 0.02,
            ),
          // SizedBox(width: screenWidth * 0.01),
          Text(
            buttonText,
            style: TextStyle(
              fontSize: screenHeight * 0.02,
              color: AppColors.primaryBlue,
            ),
          ),
        ],
      ),
    );
  }
}
