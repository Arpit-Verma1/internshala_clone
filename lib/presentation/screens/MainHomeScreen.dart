import 'package:flutter/material.dart';
import 'package:internshala/data/providers/MainHomeProvider.dart';
import 'package:internshala/presentation/screens/internship_screen.dart';
import 'package:internshala/presentation/widgets/bottom_bar.dart';
import 'package:provider/provider.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  final List<Widget> _pages = [
    InternshipScreen(),
    Container(),
    Container(),
    Container(),
    Container()
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<MainHomeProvider>(builder: (context, provider, widget) {
      return Scaffold(
        bottomNavigationBar: CustomBottomBar(),
        body: _pages[provider.currentIndex],
      );
    });
  }
}
