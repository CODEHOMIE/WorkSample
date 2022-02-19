import 'package:flutter/material.dart';
import 'package:work_sample/core/constants/export_files.dart';
import 'package:work_sample/services/login_validator.dart';
import 'package:work_sample/services/password_validator.dart';
import 'package:work_sample/services/polynomial_validator.dart';
import 'package:work_sample/services/upload_to_firebase.dart';
import 'package:work_sample/widgets/my_snackbar.dart';

class LoginButton extends StatefulWidget {
  var loginController;
  var passwordController;
  var polynomialController;

  LoginButton({
    this.loginController,
    this.passwordController,
    this.polynomialController,
  });

  @override
  _LoginButtonState createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 10,
      ),
      child: InkWell(
        onTap: () {
          if (widget.polynomialController.text.isEmpty) {
            MySnackbar().showSnackbar("Enter polynomial", context);
            return;
          }
          if (widget.loginController.text.isEmpty) {
            MySnackbar().showSnackbar("Enter login credentials", context);
            return;
          }
          if (!LoginValidator()
              .isLoginAlphanumeric(widget.loginController.text)) {
            MySnackbar().showSnackbar("Credential is invalid", context);
            return;
          }
          if (widget.passwordController.text.isEmpty) {
            MySnackbar().showSnackbar("Enter password", context);
            return;
          }
          if (!PasswordValidator()
              .isPasswordValid(widget.passwordController.text)) {
            MySnackbar().showSnackbar(
                "Password should contain one uppercase, lowercase, digit, special character and have atleast 8 characters",
                context);
            return;
          }
          UploadToFirebase().uploadInputData(
            widget.passwordController.text,
            widget.loginController.text,
            widget.passwordController.text,
            PolynomialValidator().calulateDerivative(
              widget.polynomialController.text,
            ),
          );
        },
        child: Container(
          height: 50.0,
          //width: 100.0,
          padding: EdgeInsets.only(right: 20.0, left: 20.0),
          margin: EdgeInsets.symmetric(
            horizontal: 30.0,
            vertical: 10.0,
          ),
          decoration: new BoxDecoration(
            color: Color(0xFF007EC7),
            border: Border.all(
              width: 0.0,
              color: Color(0xFF007EC7),
            ),
            borderRadius: new BorderRadius.all(
              const Radius.circular(24.0),
            ),
          ),
          child: Center(
            child: Text(
              'LOGIN',
              style: TextStyle(
                fontSize: 14.5,
                color: Colors.white,
                fontFamily: Str.APP_FONT,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
