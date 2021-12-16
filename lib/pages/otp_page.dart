import 'package:breview/util/RouteAnimation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_frame/flutter_web_frame.dart';
import 'package:pinput/pin_put/pin_put.dart';

class OTPPageWidget extends StatefulWidget {
  OTPPageWidget({Key key}) : super(key: key);

  @override
  _OTPPageWidgetState createState() => _OTPPageWidgetState();
}

class _OTPPageWidgetState extends State<OTPPageWidget> {
  String otp;

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    autoCodeRetrieve();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterWebFrame(
        maximumSize: Size(750, double.infinity),
        enabled: kIsWeb && MediaQuery.of(context).size.width > 700,
        backgroundColor: Colors.black,
        builder: (context) {
          return Scaffold(
            key: _scaffoldKey,
            backgroundColor: Colors.black,
            body: SafeArea(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 1,
                decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.topCenter,
                    image: Image.asset(
                      'assets/images/otpImage.png',
                    ).image,
                  ),
                ),
                child: Align(
                  alignment: AlignmentDirectional(0, 1),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Color(0x00EEEEEE),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 240,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(0),
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 16, 0),
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF191817),
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: Color(0xFFDBE2E7),
                                        ),
                                      ),
                                      child: InkWell(
                                        onTap: () async {
                                          Navigator.pop(context);
                                        },
                                        child: Icon(
                                          Icons.arrow_back_rounded,
                                          color: Colors.white,
                                          size: 24,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      'Verify Code',
                                      style: TextStyle(
                                        fontFamily: 'Lexend Deca',
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                      child: PinPut(
                                    fieldsCount: 6,
                                    onSubmit: (value) {
                                      otp = value;
                                      otpSubmit(otp);
                                    },
                                    textStyle: TextStyle(
                                      fontFamily: 'Lexend Deca',
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    selectedFieldDecoration: BoxDecoration(
                                      border: Border.all(color: Colors.amber),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    submittedFieldDecoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      border: Border.all(
                                        color: Colors.amber,
                                      ),
                                    ),
                                    followingFieldDecoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      border: Border.all(
                                        color: Colors.amber,
                                      ),
                                    ),
                                    cursorColor: Colors.amber,
                                    // actionButtonsEnabled: false,
                                  )),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20, 12, 20, 12),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Verify',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.amber[700]),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
