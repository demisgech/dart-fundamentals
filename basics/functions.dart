// Functions

import 'dart:io';

void displayMessage() {
  print("Hello world");
}

String checkFizzBuzz(int value) {
  return switch (value) {
    var _ when value % 3 == 0 && value % 5 == 0 => "FizzBuzz",
    var _ when value % 3 == 0 => "Fizz",
    var _ when value % 5 == 0 => "Buzz",
    _ => value.toString(),
  };
}

// bool isValid(Object obj) {
//   return obj != null;
// }
bool isNull(Object? obj) => obj == null;

// Arrow function
String sayHello(String title, String name) => "Hello,${title} ${name}";

void main() {
  // print(checkFizzBuzz(15));

  print(sayHello("Mrs.", "John"));

  print("isNull: ${isNull(null)}");
  print("isNull: ${isNull(new Object())}");

  var tax = calculateTax(100, 5, taxRate: 0.23);
  print("Tax:\$${tax}");

  var user = getUser(id: 1, name: "John");
  print(user);

  print(greet("John", "Mrs."));

  List<String> colors = ["Red", "Green", "Yellow", "Blue"];
  colors.forEach(printElement);

  // or
  colors.forEach((color) => print(color));
  colors.forEach(anonymous);

  g("Johannes");
  var colorsInUpperCaseLetter = colors
      .map((color) => color.toUpperCase())
      .toList();
  print(colorsInUpperCaseLetter);

  var colorsExceptRed = colors.where((color) => color.toLowerCase() != "red");
  print(colorsExceptRed);

  var add10 = makeAdder(10);
  print(add10(11));
}

// double calculateTax(double income, {double taxRate = 0.2}) {
//   return income * taxRate;
// }

// double calculateTax(double income, double expense, {double taxRate = 0.2}) {
//   return income * taxRate - expense;
// }

double calculateTax(double income, double expense, {double taxRate = 0.02}) =>
    income * taxRate;

class User {
  final int id;
  final String name;
  User({required this.id, required this.name});

  @override
  String toString() {
    return "User{id: ${this.id}, name: ${this.name}}";
  }
}

// Required named parameter
User getUser({required int id, required String name}) =>
    User(id: id, name: name);

// optional parameters

String greet(String name, [String? title]) => "Hello,${title ?? ''} ${name}";

void printElement(Object element) => print(element);

// Function type

// void Function(String) g = (name) => print("Hello ${name}");
void Function(String) g = (name) {
  print("Hello ${name}");

  void innerFunction() {
    print("Inner Function called");
  }

  innerFunction();
};

// Anonymous function
var anonymous = (Object obj) {
  print(obj);
};

// Functions that return functions

Function makeAdder(int addBy) {
  return (int x) => x + addBy;
}

Iterable<int> naturalsTo(int n) sync* {
  int k = 0;
  sleep(Duration(seconds: 5));
  while (k <= n) yield k++;
}

Stream<int> asynchronousNaturalsTo(int n) async* {
  int k = 0;
  sleep(Duration(seconds: 5));
  while (k <= n) yield k++;
}
