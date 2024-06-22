import 'package:flutter/material.dart';
import 'package:internshala/presentation/widgets/common/app_bar.dart';

import '../widgets/internshipCard.dart';

class InternshipScreen extends StatelessWidget {
  const InternshipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: CustomAppBar(
        TitleText: 'Internships',
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return InternshipCard();
          },
          separatorBuilder: (context, index) => Divider(),
          itemCount: 10),
    );
  }
}
