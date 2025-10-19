void main() {
  // if-case statement

  var points = [10];
  var object;
  if (points case [double x, double y]) {
    object = new Point(x: x, y: y);
  } else if (points case [int x]) {
    object = new Square(x: x);
  }

  print(object); // Square{ x: 10 }

  var x = 30;

  if (x case 10)
    print("X is 10");
  else if (x case 20)
    print("x is 20");
  else
    print("X is not 20 or 10");

  var user = "Admin".toUpperCase();

  if (user case "ADMIN")
    print("Admin");
  else if (user case "GUEST")
    print("Guest");
  else
    print("Unknown");
}

class Point {
  double x;
  double y;

  Point({required this.x, required this.y});

  @override
  String toString() {
    return "Point{x: ${this.x},${this.y}}";
  }
}

class Square {
  int x;
  Square({required this.x});

  @override
  String toString() {
    return "Square{ x:${this.x} }";
  }
}
