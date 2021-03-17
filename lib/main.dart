import 'package:flutter/material.dart';
import 'package:swypepay/screens/home_screen.dart';
import 'package:swypepay/screens/login_screen.dart';
import 'package:swypepay/screens/onboarding_screen.dart';
import 'package:swypepay/screens/sign_up_screen.dart';
import 'package:swypepay/services/navigation_service.dart';

import 'screens/forgot_screen.dart';
import 'screens/sign_up_step_two_screen.dart';

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
      themeMode: ThemeMode.light,
      navigatorKey: NavigationService.instance.navigationKey,
      routes:{
        "login":(BuildContext context) => LoginScreen(),
        "forgot":(BuildContext context) => ForgotScreen(),
        "signup":(BuildContext context)=> SignUpScreen(),
        "step2": (BuildContext context)=> SignUpStepTwo(),
      },
      home: OnboardingScreen()
    );
  }
}

