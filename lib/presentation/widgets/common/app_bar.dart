import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../data/providers/internshipProvider.dart';
import '../../../presentation/themes/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String TitleText;

  const CustomAppBar({super.key, required this.TitleText});

  @override
  Widget build(BuildContext context) {
    var internships = Provider.of<InternshipProvider>(context).internship;
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return AppBar(
      title: Text(TitleText,
          style: TextStyle(
            color: AppColors.black,
            fontSize: screenHeight * 0.025,
            fontWeight: FontWeight.bold,
          )),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            size: screenHeight * 0.028,
          ),
          color: AppColors.black,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.bookmark_border,
            size: screenHeight * 0.028,
          ),
          color: AppColors.black,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.notifications_none,
            size: screenHeight * 0.028,
          ),
          color: AppColors.black,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.chat_bubble_outline_rounded,
            size: screenHeight * 0.028,
          ),
          color: AppColors.black,
        ),
      ],
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(screenHeight * 0.08),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: Container(
                width: screenWidth * 0.22,
                decoration: BoxDecoration(
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
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 80);
}
