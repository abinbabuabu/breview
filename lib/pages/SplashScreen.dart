import 'dart:async';

import 'package:flutter/foundation.dart';
import "package:flutter/material.dart";
import 'package:flutter_web_frame/flutter_web_frame.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Timer(Duration(milliseconds: 1000), () {
      checkLoginStatus(_scaffoldKey.currentContext);
    });

    return FlutterWebFrame(
      builder: (context) {
        return Scaffold(
          key: _scaffoldKey,
          backgroundColor: Colors.black,
          body: SafeArea(
              child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 200,
                    width: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/splash.jpg",
                          fit: BoxFit.scaleDown,
                        ),
                      ],
                    ),
                  ))),
        );
      },
      maximumSize: Size(750, double.infinity),
      enabled: kIsWeb && MediaQuery
          .of(context)
          .size
          .width > 700,
      backgroundColor: Colors.black,
    );
  }
}