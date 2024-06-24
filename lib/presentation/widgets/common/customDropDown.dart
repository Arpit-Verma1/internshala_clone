import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:internshala/main.dart';

import '../../themes/colors.dart';

class CustomDropDown extends StatefulWidget {
  final List<String> options;
  final String labelText;
  final String hintText;

  CustomDropDown(
      {Key? key,
      required this.options,
      required this.labelText,
      required this.hintText})
      : super(key: key);

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  String? _selectedItem;

  void _onDropDownItemSelected(String newSelectedItem) {
    setState(() {
      _selectedItem = newSelectedItem;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InputDecorator(
      decoration: InputDecoration(
          labelStyle: TextStyle(color: AppColors.primaryBlue),
          labelText: _selectedItem == null ? null : widget.labelText,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.lightGrey),
            borderRadius: BorderRadius.circular(screenHeight * 0.01),
          ),
          contentPadding: EdgeInsets.symmetric(
            vertical: screenHeight * 0.01,
          )),
      child: DropdownButtonHideUnderline(
        child: DropdownButton2(
          dropdownStyleData: DropdownStyleData(
            offset: Offset(0, screenHeight * 0.35),
          ),
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
          hint: Text(
            widget.hintText,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
          items: widget.options.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem(
              value: value,
              child: Text(value),
            );
          }).toList(),
          isExpanded: true,
          isDense: true,
          onChanged: (String? newSelectedItem) {
            _onDropDownItemSelected(newSelectedItem!);
          },
          value: _selectedItem,
          selectedItemBuilder: (BuildContext context) {
            return widget.options.map<Widget>((String value) {
              if (_selectedItem == value) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        value + ' month',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width: 8),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedItem = null;
                          });
                        },
                        child: Icon(
                          Icons.close,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                );
              } else {
                return Text(value);
              }
            }).toList();
          },
        ),
      ),
    );
  }
}
