import 'package:flutter/material.dart';
import 'package:internshala/main.dart';
import 'package:lottie/lottie.dart';

import 'MainHomeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    //TODO: implement initState
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushNamed(context, '/mainHome');
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: screenHeight,
        width: screenWidth,
        child: Lottie.asset("assets/images/logos/splashScreen.json"),
      ),
    );
  }
}
