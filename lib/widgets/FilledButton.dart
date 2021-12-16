import 'package:flutter/material.dart';

class FilledButton extends StatelessWidget {
  final ButtonClick listener;
  final String text;

  const FilledButton({Key key, @required this.listener, this.text })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 30),
      child: MaterialButton(
        onPressed: () {
          listener();
        },
        child: Text(text),
        height: 57,
        minWidth: 150,
        color: Colors.black,
        textColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(
              color: Colors.transparent,
              width: 1,
            )),
        elevation: 3,
      ),
    );
  }
}

typedef ButtonClick = void Function();
