
import 'package:flutter/material.dart';
import 'package:work_sample/core/constants/export_files.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Str.APP_NAME,
      debugShowCheckedModeBanner: false,
      theme: appTheme(
        context,
      ),
      home: LoginView(),
    );
  }
}
