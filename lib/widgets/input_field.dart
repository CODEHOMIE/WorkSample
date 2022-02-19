import 'package:flutter/material.dart';
import 'package:work_sample/core/constants/export_files.dart';

class InputField extends StatefulWidget {
  var hintStr;
  var controller;

  InputField({this.controller, this.hintStr,});

  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 30,
      ),
        child: TextField(
          controller: widget.controller,
          autocorrect: true,
          style: TextStyle(
            fontSize: 14.0,
            color: Colors.grey,
            fontFamily: Str.APP_FONT,
          ),
          decoration: InputDecoration(
            hintText: widget.hintStr,
            filled: true,
            labelText: widget.hintStr,
            counterStyle: TextStyle(
              color: Colors.grey,
              fontFamily: Str.APP_FONT,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(6.0)),
              borderSide: BorderSide(color: Colors.grey),
            ),
            prefixIcon: const Icon(
              Icons.login,
              color: Colors.grey,
              size: 21.0,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(6.0)),
              borderSide: BorderSide(color: Colors.grey),
            ),
            hintStyle: TextStyle(
              fontSize: 13.0,
              color: Colors.grey,
              fontFamily: Str.APP_FONT,
            ),
            labelStyle: TextStyle(
              fontSize: 14.0,
              color: Colors.grey,
              fontFamily: Str.APP_FONT,
            ),
          ),
        ),
      );
  }
}