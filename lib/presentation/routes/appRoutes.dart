import 'package:flutter/material.dart';
import 'package:internshala/presentation/screens/MainHomeScreen.dart';
import 'package:internshala/presentation/screens/internship_screen.dart';
import 'package:internshala/presentation/screens/splashScreen.dart';

import '../screens/filterScreen.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (BuildContext context) => SplashScreen(),
  '/mainHome': (BuildContext context) => MainHomeScreen(),
  '/internship': (BuildContext context) => InternshipScreen(),
  '/filter': (BuildContext context) => FilterScreen(),
};
