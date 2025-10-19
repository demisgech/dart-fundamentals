class Person {}

class Student {}

void main() {
  // Type test operators

  // as, is, is!

  var student = new Student();

  if (student is Person) {
    print("Do something...");
  } else {
    print("Do anther thing");
  }

  const Object i = 1;
  var data = [i as int];

  if (i is! double) {
    print("I is not double");
  }

  // Cascade Operators(.., ?..)

  var point1 = new Point()
    ..x = 20
    ..y = 30
    ..radius = 10;
  print(point1);

  var paint = new Paint()
    ?..color = null
    ..strokeHeight = 10
    ..strokeWidth = 20;
  print(paint);

  // Nullable operators(?)
  String? name = null;

  // Null safety operators(??,?.)

  String? color = null;
  var defaultColor = name ?? "black";
  print(defaultColor); // black
}

class Point {
  double radius;
  double x;
  double y;

  Point({this.x = 0, this.y = 0, this.radius = 0});

  @override
  String toString() {
    return "{ x: ${this.x}, y:${this.y}, radius:${this.radius} }";
  }
}

class Paint {
  String? color;
  double? strokeWidth;
  double? strokeHeight;

  @override
  String toString() {
    return "{ color: ${this.color}, width:${this.strokeWidth}, height:${this.strokeHeight} }";
  }
}
