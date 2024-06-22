import 'package:flutter/material.dart';
import 'package:internshala/data/providers/MainHomeProvider.dart';
import 'package:internshala/data/providers/internshipProvider.dart';
import 'package:internshala/presentation/screens/MainHomeScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => MainHomeProvider()),
    ChangeNotifierProvider(create: (_) => InternshipProvider()),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: MainHomeScreen());
  }
}
