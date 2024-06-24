import 'package:flutter/material.dart';
import 'package:internshala/main.dart';
import 'package:internshala/presentation/themes/colors.dart';

class CustomRichText extends StatelessWidget {
  final String leadingText;
  final String? highlightedText;
  const CustomRichText(
      {super.key, required this.leadingText, this.highlightedText});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
              text: ' ' + leadingText,
              style: TextStyle(
                  color: Colors.black, fontSize: screenHeight * 0.02)),
          TextSpan(
            text: highlightedText,
            style: TextStyle(
                color: AppColors.primaryBlue, fontSize: screenHeight * 0.02),
          ),
        ],
      ),
    );
  }
}
