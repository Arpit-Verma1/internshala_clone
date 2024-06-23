import 'package:flutter/material.dart';
import 'package:internshala/data/providers/internshipProvider.dart';
import 'package:internshala/main.dart';
import 'package:internshala/presentation/themes/colors.dart';
import 'package:internshala/presentation/widgets/common/app_bar.dart';
import 'package:provider/provider.dart';

import '../../core/models/internship_model.dart';
import '../widgets/internshipCard.dart';

class InternshipScreen extends StatefulWidget {
  @override
  State<InternshipScreen> createState() => _InternshipScreenState();
}

class _InternshipScreenState extends State<InternshipScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Provider.of<InternshipProvider>(context, listen: false).fetchInternship();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: CustomAppBar(
        TitleText: 'Internships',
      ),
      body: Consumer<InternshipProvider>(
        builder: (context, internshipProvider, child) {
          if (internshipProvider.isLoading) {
            return Container(
              color: AppColors.white,
              child: Center(
                  child: CircularProgressIndicator(
                color: AppColors.primaryBlue,
              )),
            );
          } else {
            List<Job> internships = internshipProvider.internship;
            return ListView.separated(
              itemBuilder: (context, index) {
                return InternshipCard(
                  index: index,
                );
              },
              separatorBuilder: (context, index) => Container(
                height: screenHeight * 0.012,
                decoration: BoxDecoration(
                  color: AppColors.lightGrey,
                  border: Border.all(
                    color: AppColors.grey.withOpacity(0.6),
                  ),
                ),
              ),
              itemCount: internships.length,
            );
          }
        },
      ),
    );
  }
}
