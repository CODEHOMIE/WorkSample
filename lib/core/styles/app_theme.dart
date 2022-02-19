
import 'package:flutter/material.dart';
import 'package:work_sample/core/constants/str.dart';

ThemeData appTheme(context)=> ThemeData(
  primaryColor: Colors.lightGreen,
        platform: TargetPlatform.iOS,
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: Str.APP_FONT,
            ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
);