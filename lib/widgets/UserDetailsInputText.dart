import 'package:flutter/material.dart';

class UserDetailsInputText extends StatelessWidget {
  final textEditingController;
  final labelText;
  final hintText;

  const UserDetailsInputText(
      {Key key, this.textEditingController, this.labelText, this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
          controller: textEditingController,
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(
            labelStyle: TextStyle(color: Colors.black),
            labelText: this.labelText,
            hintText: this.hintText,
            hintStyle: TextStyle(color: Colors.black12),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0x00000000),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0x00000000),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            filled: true,
            fillColor: Color(0xFFEEEEEE),
            contentPadding: EdgeInsetsDirectional.fromSTEB(10, 20, 0, 20),
          ),
          validator: (val) {
            if (val.isEmpty) {
              return 'Required';
            }

            return null;
          }),
    );
  }
}
