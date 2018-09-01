import 'package:flutter/material.dart';
import 'package:circle_indicator/circle_indicator.dart';
import 'LandingScreen.dart';

class SignUpScreen extends StatelessWidget {
  //required controller for SlideScreen

  final PageController controller = new PageController();
  final List<StatelessWidget> pageList = new List<StatelessWidget>();

  void initPagerList() {
    pageList.add(LandingScreen());
    pageList.add(LandingScreen());
    pageList.add(LandingScreen());
    pageList.add(LandingScreen());
  }

  @override
  Widget build(BuildContext context) {
    initPagerList();
    return MaterialApp(
      home: Container(
        padding: new EdgeInsets.only(
          top: 16.0,
        ),
        decoration: new BoxDecoration(),
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            new PageView.builder(
                itemCount: pageList.length,
                controller: controller,
                itemBuilder: (_, int i) => pageList[i]),
            new Column(
              mainAxisAlignment: MainAxisAlignment.end,
//              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  margin: new EdgeInsets.only(
                    bottom: 216.0,
                  ),
                  color: Colors.amberAccent,
                  child: new CircleIndicator(controller, pageList.length, 3.0,
                      Colors.white70, Colors.blue),
                ),
              ],
//                margin: new EdgeInsets.only(
//                  top: 16.0,
//                  bottom: 16.0,
//                ),
            ),
          ],
        ),
      ),
    );
  }
}
