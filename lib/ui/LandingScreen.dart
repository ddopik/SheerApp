import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {

  final PageController controller = new PageController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              child: Container(
                child: Image(
                  image: new AssetImage("images/splash_screen.png"),
                ),
              ),
              flex: 5,
            ),
            Expanded(
              flex: 3,
              child: Center(
                child: Column(
                  children: <Widget>[
                    Container(
                        child: Text(
                      "lit's get to sheering...?",
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: new TextStyle(fontWeight: FontWeight.bold),
                    )),
                    Container(
                        margin: new EdgeInsets.symmetric(vertical: 20.0),
                        padding: EdgeInsets.only(left: 50.0,right: 50.0),
                        child: Center(
                            child: Text(
                                "SignUp or login to let friends share about you and start sharing about you "
                            ,textAlign: TextAlign.center,)))
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.blue,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
