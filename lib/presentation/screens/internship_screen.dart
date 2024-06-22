import 'package:flutter/material.dart';
import 'package:internshala/data/providers/internshipProvider.dart';
import 'package:internshala/presentation/widgets/common/app_bar.dart';
import 'package:provider/provider.dart';

import '../widgets/internshipCard.dart';

class InternshipScreen extends StatefulWidget {
  const InternshipScreen({super.key});

  @override
  State<InternshipScreen> createState() => _InternshipScreenState();
}

class _InternshipScreenState extends State<InternshipScreen> {
  @override
  void initState() {
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
      body: ListView.separated(
          itemBuilder: (context, index) {
            return InternshipCard();
          },
          separatorBuilder: (context, index) => Divider(),
          itemCount: 10),
    );
  }
}
