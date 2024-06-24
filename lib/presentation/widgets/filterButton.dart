import 'package:flutter/material.dart';
import 'package:internshala/main.dart';
import 'package:internshala/presentation/widgets/common/app_bar.dart';
import 'package:provider/provider.dart';

import '../../data/providers/internshipProvider.dart';
import '../themes/colors.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({super.key});

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    var internships = Provider.of<InternshipProvider>(context).internship;
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/filter');
      },
      child: PreferredSize(
        preferredSize: Size.fromHeight(screenHeight * 0.08),
        child: Container(
          color: AppColors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: screenWidth * 0.22,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  border: Border.all(color: AppColors.primaryBlue),
                  borderRadius: BorderRadius.circular(screenHeight * 0.03),
                ),
                padding: EdgeInsets.symmetric(vertical: screenWidth * 0.01),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.filter_alt_outlined,
                      color: AppColors.primaryBlue,
                      size: screenHeight * 0.02,
                    ),
                    // SizedBox(width: screenWidth * 0.01),
                    Text(
                      'Filters',
                      style: TextStyle(
                        fontSize: screenHeight * 0.02,
                        color: AppColors.primaryBlue,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              if (internships.isNotEmpty)
                Text('${internships.length} total internships',
                    style: TextStyle(
                      fontSize: screenHeight * 0.015,
                      color: AppColors.black,
                    )),
              Divider(
                color: AppColors.grey.withOpacity(0.8),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
