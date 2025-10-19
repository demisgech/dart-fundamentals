// Built-in Data types

import 'dart:collection';

void main() {
  // Numbers(int, double)
  int x = 10;
  double PI = 3.14;

  // Strings(String)
  String username =
      "@johngech"; // single line string with double or single quote

  // Multiline String with triple double or single quote
  String multilineString = """
    Hi there,
    this is
    multiline string
    with double quote
""";

  multilineString = '''
    Hi there,
    this is
    multiline string
    with single quote
''';

  //Booleans(bool)

  bool isPublished = false;
  var isMale = true;

  //Records(Key-Value) == (value1, value1)
  // Looks like unpacking operators
  var (first, second) = (10, 30);
  print("First: ${first}, Second: ${second}");

  // Functions(Function)
  Function f = () => print("Hi there I am function");
  f(); // Invoking functions

  // Lists(Arrays)

  List<int> numbers = [1, 2, 3, 4];
  numbers.forEach((number) => print(number));

  // Sets
  Set<String> letters = {"A", "B", "B", "C"};
  letters.forEach((letter) => print(letter));

  // Maps
  // Maps are key–value stores where keys and values can vary.
  //   Map<String, dynamic> user = {
  //   'name': 'Alice',
  //   'age': 25,
  // };

  Map<String, String> settings = new HashMap<String, String>();

  settings.addAll({"name": "John", "role": "Admin User"});
  settings.addAll({"name": "Abebe", "role": "Guest User"});
  settings.forEach((key, value) => print("{Key: ${key}, value: ${value}}"));

  // Records(tuple)
  // Records are:
  //=>fixed-size,
  //=>immutable,
  //=>typed groupings of values — like lightweight structs or tuples.

  var record = ('first', a: 2, b: true, 'last');
  print(record);

  (int, int) swap((int, int) record) {
    var (a, b) = record;
    return (b, a);
  }

  var a = 1;
  var b = 2;

  print("a: ${a},b: ${b}");
  (a, b) = swap((a, b));
  print("a: ${a},b: ${b}");

  (int a, bool b) myRecord;

  myRecord = (123, true);

  ({double x, double y}) point;

  point = (x: 1.1, y: 1.1);

  // Record allow functions to return multiple values

  (String name, int age) userInfo(Map<String, dynamic> json) {
    return (json['name'] as String, json['age'] as int);
  }

  // Destructuring
  var (name, age) = userInfo({"name": "Abebe", "age": 22});
  print("name: ${name},age: ${age}");

  final user = <String, dynamic>{"name": "John", "age": 23};
  print(user);

  // Destructor using record patterns
  (name, age) = userInfo(user);
  print(name);

  // Named records
  ({double px, double py}) pointInfo((double, double) point) {
    return (px: point.$1, py: point.$2);
  }

  var (:px, :py) = pointInfo((10, 20));

  final buttons = [
    (
      label: "Sign Up",
      icon: "Button Icon",
      onPressed: () => print("Button pressed"),
    ),
    (
      label: "Login",
      icon: "Button Icon",
      onPressed: () => print("Button pressed"),
    ),
    (
      label: "Register",
      icon: "Button Icon",
      onPressed: () => print("Button pressed"),
    ),
  ];

  print(buttons);
  buttons.forEach((button) => print(button.label));
  var buttonLabels = buttons.map((button) => button.label);
  print(buttonLabels);
}
