import 'package:flutter/material.dart';
import 'package:internshala/data/providers/MainHomeProvider.dart';
import 'package:internshala/data/providers/internshipProvider.dart';
import 'package:internshala/presentation/routes/appRoutes.dart';
import 'package:internshala/presentation/screens/MainHomeScreen.dart';
import 'package:internshala/presentation/screens/splashScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => MainHomeProvider()),
    ChangeNotifierProvider(create: (_) => InternshipProvider()),
  ], child: MyApp()));
}

late double screenHeight;
late double screenWidth;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          elevation: 0,
        ),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: appRoutes,
    );
  }
}
