import 'package:flutter/material.dart';
import 'package:work_sample/core/constants/export_files.dart';

class MySnackbar {
  showSnackbar(
    String inputStr,
    BuildContext context,
  ) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Color(0xFF007EC7),
        content: Text(
          inputStr,
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
            fontFamily: Str.APP_FONT,
            fontWeight: FontWeight.w600,
            letterSpacing: 1.2,
          ),
        ),
      ),
    );
  }
}
