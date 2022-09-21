/// Checks if string consist only Alphabet. (No Whitespace)
bool isText(String? inputString, {bool isRequired = false}) {
  bool isInputStringValid = false;

  if ((inputString == null ? true : inputString.isEmpty) && !isRequired) {
    isInputStringValid = true;
  }
  if (inputString != null) {
    isInputStringValid = true;
  }

  return isInputStringValid;
}

/// Checks if string consist only numeric.
bool isNumeric(String? inputString, {bool isRequired = false}) {
  bool isInputStringValid = false;

  if ((inputString == null ? true : inputString.isEmpty) && !isRequired) {
    isInputStringValid = true;
  }

  if (inputString != null) {
    const pattern = r'^\d+$';

    final regExp = RegExp(pattern);

    isInputStringValid = regExp.hasMatch(inputString);
  }

  return isInputStringValid;
}
