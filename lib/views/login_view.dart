import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work_sample/widgets/input_field.dart';
import 'package:work_sample/widgets/login_button.dart';
import 'package:work_sample/widgets/password_input.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  var loginController = TextEditingController();
  var passwordController = TextEditingController();
  var polynomialController = TextEditingController();
  bool showPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InputField(
              controller: polynomialController,
              hintStr: 'Polynomial',
            ),
            InputField(
              controller: loginController,
              hintStr: 'Login credentials',
            ),
            PasswordInput(
              controller: passwordController,
              showPassword: showPassword,
            ),
            LoginButton(
              loginController: loginController,
              passwordController: passwordController,
              polynomialController: polynomialController,
            )
          ],
        ),
      ),
    );
  }
}
