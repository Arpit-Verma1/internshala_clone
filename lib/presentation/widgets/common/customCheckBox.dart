import 'package:flutter/material.dart';
import 'package:internshala/main.dart';
import 'package:internshala/presentation/themes/colors.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({super.key});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  @override
  Widget build(BuildContext context) {
    bool _isChecked = false;

    void _handleCheckboxChange(bool? newValue) {
      setState(() {
        _isChecked = newValue ?? false;
      });
    }

    return SizedBox(
      width: screenHeight * 0.03,
      height: screenHeight * 0.03,
      child: Checkbox(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        value: _isChecked,
        side: BorderSide(color: AppColors.darkgrey, width: 1.5),
        activeColor: Colors.blueAccent,
        onChanged: _handleCheckboxChange,
      ),
    );
  }
}
