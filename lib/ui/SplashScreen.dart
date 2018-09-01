import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    _navifateTOLandingScreen(context);


    return new Scaffold(
//      backgroundColor: Colors.orangeAccent,
      body: new Center(
        child: new Image(
          image: new AssetImage("images/splash_screen.png"),
          color: null,
          fit: BoxFit.scaleDown,
          alignment: Alignment.center,
        ),
      ),
    );
  }
  void _navifateTOLandingScreen (BuildContext context) async {
    await new Future.delayed(const Duration(seconds: 5));
//      Navigator.push(context, new MaterialPageRoute(builder: (__) => new SecondView()));
    Navigator.pushNamed(context, '/landing_screen');
  }

}