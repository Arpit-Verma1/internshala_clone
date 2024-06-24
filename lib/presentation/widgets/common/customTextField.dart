import 'package:flutter/material.dart';
import 'package:internshala/main.dart';
import 'package:internshala/presentation/themes/colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  CustomTextField(
      {super.key, required this.controller, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: AppColors.grey),
          suffixIcon: IconButton(
            icon: Icon(Icons.calendar_today),
            onPressed: () {},
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.grey),
            borderRadius: BorderRadius.circular(screenHeight * 0.01),
          ),
          contentPadding: EdgeInsets.symmetric(
              vertical: screenHeight * 0.01, horizontal: screenWidth * 0.02)),
    );
  }
}
