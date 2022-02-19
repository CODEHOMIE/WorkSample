class LoginValidator {
  // alphanumeric
  static final validCharacters = RegExp(r'^[a-zA-Z0-9]+$');
  bool isLoginAlphanumeric(
    String loginInput,
  ) =>
      validCharacters.hasMatch(loginInput);
}
