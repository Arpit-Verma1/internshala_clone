import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:internshala/main.dart';
import 'package:internshala/presentation/themes/colors.dart';
import 'package:internshala/presentation/widgets/common/customElevatedButton.dart';
import 'package:provider/provider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../data/providers/internshipProvider.dart';
import '../../utils/helpers/dateHelper.dart';

class InternshipCard extends StatelessWidget {
  final int index;

  const InternshipCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    var internship = Provider.of<InternshipProvider>(context, listen: false)
        .internship[index];
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Container(
      color: AppColors.white,
      height: screenHeight * 0.47,
      padding: EdgeInsets.all(screenWidth * 0.04),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(screenHeight * 0.005),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(screenHeight * 0.005),
              border: Border.all(color: AppColors.grey),
            ),
            width: screenWidth * 0.3,
            height: screenHeight * 0.035,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/images/icons/arrowup.svg',
                    height: screenHeight * 0.02),
                SizedBox(width: screenWidth * 0.01),
                Text(
                  'Actively Hiring',
                  style: TextStyle(fontSize: screenHeight * 0.015),
                )
              ],
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: screenWidth * 0.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      internship.title,
                      style: TextStyle(
                          fontSize: screenHeight * 0.022,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(internship.companyName,
                        style: TextStyle(
                            fontSize: screenHeight * 0.017,
                            color: AppColors.darkgrey)),
                  ],
                ),
              ),
              SizedBox(width: screenWidth * 0.27),
              CachedNetworkImage(
                  height: screenHeight * 0.05,
                  width: screenHeight * 0.05,
                  imageUrl:
                      'https://internshala-uploads.internshala.com/logo%2F649ebe95ae2391688125077.png'),
            ],
          ),
          Row(
            children: [
              Icon(Icons.location_on_outlined,
                  color: AppColors.darkgrey, size: screenHeight * 0.021),
              Text(internship.type == "virtual"
                  ? "Virtual"
                  : (internship.locations[0].locationName +
                      ', ' +
                      internship.locations[0].country)),
            ],
          ),
          Row(
            children: [
              Row(
                children: [
                  Icon(Icons.play_circle_filled_outlined,
                      color: AppColors.darkgrey, size: screenHeight * 0.021),
                  SizedBox(width: screenWidth * 0.01),
                  Text(internship.startDate)
                ],
              ),
              SizedBox(width: screenWidth * 0.015),
              Row(
                children: [
                  Icon(Icons.calendar_today,
                      color: AppColors.darkgrey, size: screenHeight * 0.021),
                  Text(internship.duration)
                ],
              )
            ],
          ),
          Row(
            children: [
              Row(
                children: [
                  Icon(Icons.money_outlined,
                      color: AppColors.darkgrey, size: screenHeight * 0.021),
                  SizedBox(width: screenWidth * 0.015),
                  Text(internship.stipend.salary)
                ],
              ),
              SizedBox(width: screenWidth * 0.015),
              if (internship.stipend.salaryType != 'fixed')
                Row(
                  children: [
                    Text('+ incencitives'),
                    SizedBox(width: screenWidth * 0.015),
                    Icon(CupertinoIcons.question_circle,
                        color: AppColors.darkgrey, size: screenHeight * 0.021),
                  ],
                ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: screenHeight * 0.003, horizontal: screenWidth * 0.02),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(screenHeight * 0.005),
                color: AppColors.lightGrey),
            child: Text(
              'internship ' + internship.ppoLabelValue,
              style: TextStyle(fontSize: screenHeight * 0.015),
            ),
          ),
          Container(
            width: screenWidth * 0.3,
            padding: EdgeInsets.symmetric(
                vertical: screenHeight * 0.003, horizontal: screenWidth * 0.02),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(screenHeight * 0.005),
                color: AppColors.lightGrey),
            child: Row(
              children: [
                Icon(Icons.history,
                    color: AppColors.darkgrey, size: screenHeight * 0.021),
                Text(
                  DateHelper().getTimeAgo(internship.postedOn!),
                  style: TextStyle(fontSize: screenHeight * 0.015),
                ),
              ],
            ),
          ),
          Divider(
            color: AppColors.grey,
          ),
          Row(
            children: [
              SizedBox(
                width: screenWidth * 0.33,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'View Detials',
                    style: TextStyle(color: AppColors.primaryBlue),
                  )),
              CustomElevatedButton1(buttonText: 'Apply Now', onPressed: () {}),
            ],
          )
        ],
      ),
    );
  }
}
