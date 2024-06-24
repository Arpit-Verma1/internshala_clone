import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internshala/main.dart';
import 'package:internshala/presentation/widgets/common/app_bar.dart';
import 'package:internshala/presentation/widgets/common/customCheckBox.dart';
import 'package:internshala/presentation/widgets/common/customElevatedButton.dart';
import 'package:internshala/presentation/widgets/common/customDropDown.dart';
import 'package:internshala/presentation/widgets/common/customTextField.dart';
import 'package:internshala/presentation/widgets/common/priceButton.dart';
import 'package:internshala/presentation/widgets/common/richTextCard.dart';

import '../themes/colors.dart';
import '../widgets/common/customElevatedButton2.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          color: AppColors.white,
          height: screenHeight * 0.09,
          padding: EdgeInsets.all(screenWidth * 0.03),
          child: Row(
            children: [
              Expanded(
                  flex: 1,
                  child: CustomElevatedButton2(
                      buttonText: 'Clear all', onPressed: () {})),
              SizedBox(width: screenWidth * 0.04),
              Expanded(
                  flex: 1,
                  child: CustomElevatedButton1(
                      buttonText: 'Apply', onPressed: () {})),
            ],
          ),
        ),
        appBar: CustomAppBar(TitleText: 'Filters'),
        body: SingleChildScrollView(
          child: Container(
            height: screenHeight * 1,
            color: AppColors.white,
            padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.05, vertical: screenHeight * 0.02),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomCheckBox(),
                    CustomRichText(
                        leadingText: 'As per my',
                        highlightedText: ' preferences'),
                  ],
                ),
                Text('INTERNSHIP TYPE'),
                Row(
                  children: [
                    CustomCheckBox(),
                    CustomRichText(
                      leadingText: 'Work from home',
                    )
                  ],
                ),
                Row(
                  children: [
                    CustomCheckBox(),
                    CustomRichText(leadingText: 'Part-time')
                  ],
                ),
                Text('MONTHLY STIPEND (INR)'),
                SizedBox(
                  height: screenHeight * 0.1,
                  width: screenWidth * 0.6,
                  child: GridView.builder(
                      itemCount: 5,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 2.8,
                          mainAxisSpacing:
                              screenHeight * 0.02, // spacing between rows
                          crossAxisSpacing: screenWidth * 0.01,
                          crossAxisCount: 3),
                      itemBuilder: (context, index) {
                        return PriceButton(
                            buttonText: '\u20B9 ${(index + 1) * 2}' + '000');
                      }),
                ),
                Text('STARTING FROM OR AFTER'),
                CustomTextField(
                    controller: _controller, hintText: 'Choose Date'),
                CustomDropDown(
                  hintText: 'Select Duration',
                  options: ['1', '2', '3', '4', '6', '12', '24', '36'],
                  labelText: 'Choose Duration',
                ),
                Text('MORE FILTERS'),
                Row(
                  children: [
                    CustomCheckBox(),
                    CustomRichText(leadingText: 'Internships with job offer'),
                    SizedBox(width: screenWidth * 0.02),
                    Icon(CupertinoIcons.question_circle,
                        color: AppColors.darkgrey, size: screenHeight * 0.021),
                  ],
                ),
                Row(
                  children: [
                    CustomCheckBox(),
                    CustomRichText(leadingText: 'Fast response'),
                    SizedBox(width: screenWidth * 0.02),
                    Icon(CupertinoIcons.question_circle,
                        color: AppColors.darkgrey, size: screenHeight * 0.021),
                  ],
                ),
                Row(
                  children: [
                    CustomCheckBox(),
                    CustomRichText(leadingText: 'Early applications'),
                    SizedBox(width: screenWidth * 0.02),
                    Icon(CupertinoIcons.question_circle,
                        color: AppColors.darkgrey, size: screenHeight * 0.021),
                  ],
                ),
                Row(
                  children: [
                    CustomCheckBox(),
                    CustomRichText(leadingText: 'Internships for women'),
                    SizedBox(width: screenWidth * 0.02),
                    Icon(CupertinoIcons.question_circle,
                        color: AppColors.darkgrey, size: screenHeight * 0.021),
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.1,
                )
              ],
            ),
          ),
        ));
  }
}
