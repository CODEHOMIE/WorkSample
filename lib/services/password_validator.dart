class PasswordValidator {
  // should contain at least one upper case
  // should contain at least one lower case
  // should contain at least one digit
  // should contain at least one Special character
  // Must be at least 8 characters in length
  static final validCharacters = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  bool isPasswordValid(String passInput) => validCharacters.hasMatch(passInput);
}