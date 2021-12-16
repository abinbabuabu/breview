import 'dart:async';

import 'package:breview/provider/LoginProvider.dart';
import 'package:breview/util/RouteAnimation.dart';
import 'package:flutter/foundation.dart';
import "package:flutter/material.dart";
import 'package:flutter_web_frame/flutter_web_frame.dart';

import 'home_page.dart';
import 'login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  StreamSubscription _streamSubscription;
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    LoginProvider.instantiate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    checkLoginStatus(_scaffoldKey.currentContext);

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
      enabled: kIsWeb && MediaQuery.of(context).size.width > 700,
      backgroundColor: Colors.black,
    );
  }

  void checkLoginStatus(BuildContext navcontext) {
    _streamSubscription = LoginProvider.stateStream.listen((state) {
      if (state == PhoneAuthState.Failed || state == PhoneAuthState.newUser) {
        Future.delayed(Duration(seconds: 1), () {
          Navigator.of(_scaffoldKey.currentContext)
              .pushReplacement(FadeRoute(page: PhoneloginWidget()));
        });
      }
      if (state == PhoneAuthState.Verified) {
        Future.delayed(Duration(seconds: 1), () {
          Navigator.of(navcontext).pushReplacement(FadeRoute(page: HomePage()));
        });
      }
    });
  }
}
