import 'package:flutter/material.dart';
import 'package:swypepay/screens/home_screen.dart';
import 'package:swypepay/screens/onboarding_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SwypePay',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
        fontFamily: 'Nunito'
      ),
      darkTheme: ThemeData(
        fontFamily: 'Nunito',
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,



      ),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      home: OnboardingScreen()
    );
  }
}

