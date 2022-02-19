import 'package:flutter/material.dart';
import 'package:work_sample/core/constants/export_files.dart';

class PasswordInput extends StatefulWidget {
  final controller;
  var showPassword;

  PasswordInput({
    this.controller,
    this.showPassword,
  });
  @override
  _PasswordInputState createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 30,
      ),
      child: TextField(
        controller: widget.controller,
        obscureText: widget.showPassword,
        autocorrect: false,
        style: TextStyle(
          fontSize: 14.0,
          color: Colors.grey,
          fontFamily: Str.APP_FONT,
        ),
        decoration: InputDecoration(
          hintText: '********',
          filled: true,
          labelText: 'Password',
          counterStyle: TextStyle(
            color: Colors.grey,
            fontFamily: Str.APP_FONT,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(6.0)),
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(6.0)),
            borderSide: BorderSide(color: Colors.grey),
          ),
          prefixIcon: const Icon(
            Icons.lock_outline,
            color: Colors.grey,
            size: 21.0,
          ),
          suffixIcon: IconButton(
            icon: Icon(
              widget.showPassword ? Icons.visibility_off : Icons.visibility,
              color: Colors.grey,
            ),
            onPressed: onPassChanged,
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

  onPassChanged() {
    if (mounted)
      setState(
        () {
          widget.showPassword = !widget.showPassword;
        },
      );
  }
}
