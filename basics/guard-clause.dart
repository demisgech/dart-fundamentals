// Guard clause

void main() {
  var op = "==";
  String result;
  // if-case guard clause
  if (op case var _ when ["*", "/", "+", "-", "%"].contains(op)) {
    result = "Arithmetic Operator";
  } else if (op case var _
      when ["==", "<=", ">=", "<", ">", "!="].contains(op)) {
    result = "Comparison Operator";
  } else if (op case var _ when ["!", "||", "&&"].contains(op)) {
    result = "Logical Operator";
  } else if (op case var _
      when ["=", "+=", "-=", "*=", "/=", "%="].contains(op)) {
    result = "Assignment Operator";
  } else {
    result = "Unknown Operator";
  }

  // switch guard clause
  switch (op) {
    case var _ when ["*", "/", "+", "-", "%"].contains(op):
      result = "Arithmetic Operator";
    case var _ when ["==", "<=", ">=", "<", ">", "!="].contains(op):
      result = "Comparison Operator";
    case var _ when ["!", "||", "&&"].contains(op):
      result = "Logical Operator";
    case var _ when ["=", "+=", "-=", "*=", "/=", "%="].contains(op):
      result = "Assignment Operator";
    default:
      result = "Unknown Operator";
  }
  // switch-expression guard clause

  result = switch (op) {
    var _ when ["*", "/", "+", "-", "%"].contains(op) => "Arithmetic Operator",
    var _ when ["==", "<=", ">=", "<", ">", "!="].contains(op) =>
      "Comparison Operator",
    var _ when ["!", "||", "&&"].contains(op) => "Logical Operator",
    var _ when ["=", "+=", "-=", "*=", "/=", "%="].contains(op) =>
      "Assignment Operator",
    _ => "Unknown Operator",
  };

  print(result);
}
