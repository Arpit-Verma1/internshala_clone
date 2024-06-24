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
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
