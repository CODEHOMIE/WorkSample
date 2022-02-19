class PolynomialValidator {
 String calulateDerivative(userInput) {
    var finalValue = '';
    for (int i = 0; i < userInput.length; i++) {
      var char = userInput[i];
      if (char == '^') {
        var sqPosition = userInput[i + 1];
        var realValue = userInput[i - 2];
        var xValue = userInput[i - 1];
        var leadSign = '';
        try {
          leadSign = userInput[i - 3];
        } catch (e) {
          leadSign = '';
        }
        if (sqPosition == '1') {
          finalValue += (leadSign +
              (int.parse(sqPosition) * int.parse(realValue)).toString());
        } else {
          finalValue += (leadSign +
              (int.parse(sqPosition) * int.parse(realValue)).toString() +
              xValue +
              '^' +
              (int.parse(sqPosition) - 1).toString());
        }
      }
    }
    return finalValue;
  }
}
