// Switch statement

void main() {
  var user = "Admin".toUpperCase();

  // if-case statement
  if (user case "ADMIN") {
    print("Admin");
  } else if (user case "GUEST") {
    print("Guest");
  } else {
    print("Unknown");
  }

  // Switch statement
  switch (user) {
    case "ADMIN":
      print("Admin");
      break;
    case "GUEST":
      print("Guest");
      break;
    default:
      print("Unknown");
  }

  // Switch expression

  var result = switch (user) {
    "ADMIN" => "Admin",
    "GUEST" => "Guest",
    _ => "Unknown",
  };

  print(result);

  var command = "CLOSED".toUpperCase();

  switch (command) {
    case "OPEN":
      print("Opened");
      continue newCase;

    newCase:
    case "PENDING":
      print("Pending...");
    case "CLOSED":
      print("Closed...");
    default:
      print("Unknown command");
  }

  // Logical expressions;
  var op = "=";
  switch (op) {
    case "*" || "/" || "+" || "-" || "%":
      print("Arithmetic Operator");
    case "==" || "<=" || ">=" || "<" || ">" || "!=":
      print("Comparison Operator");
    case "!" || "||" || "&&":
      print("Logical Operator");
    case "=" || "+=" || "-=" || "*=" || "/=" || "%=":
      print("Assignment Operator");
    default:
      print("Unknown Operator");
  }

  var area = calculateArea(new Circle(10));
  print("Area: ${area}");
  area = calculateArea(new Square(10));
  print("Area: ${area}");
}

sealed class Shape {}

class Circle implements Shape {
  final double radius;
  Circle(this.radius);
}

class Square implements Shape {
  final double length;
  Square(this.length);
}

double calculateArea(Shape shape) => switch (shape) {
  Circle(radius: var radius) => 3.14 * radius * radius,
  Square(length: var length) => length * length,
};
