import 'package:flutter/material.dart';
import 'package:flutter_app_test_1/res/Strings.dart';
import 'package:flutter_app_test_1/ui/SplashScreen.dart';
import 'package:flutter_app_test_1/ui/LandingScreen.dart';
import 'package:flutter_app_test_1/ui/LoginScreen.dart';
import 'package:flutter_app_test_1/ui/SignUpScreen.dart';



class SheerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.app_name,
      theme: new ThemeData( primarySwatch:Colors.lightGreen),
      home: new SignUpScreen(),
      routes: <String,WidgetBuilder>{
        "/splash_screen" :(BuildContext context) => new SplashScreen(),
        "/signup_screen" :(BuildContext context) => new SignUpScreen(),
        "/login_screen" : (BuildContext context) => new LoginScreen(),
        "/landing_screen" : (BuildContext context) => new LandingScreen()
      },
    );
  }
}
