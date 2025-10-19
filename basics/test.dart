// String getPlayerName(String? name) => name ?? "Guest";

// String getPlayerName(String? name) => name != null ? name : "Guest";

String getPlayerName(String? name) {
  if (name != null) {
    return name;
  } else {
    return "Guest";
  }
}

class Point {
  double radius;
  double x;
  double y;

  Point({this.x = 0, this.y = 0, this.radius = 0});

  @override
  String toString() {
    return "{x: ${this.x},y: ${this.y}, radius: ${this.radius} }";
  }
}

void main() {
  // print(getPlayerName("Abebe"));

  var point1 = new Point()
    ..x = 2
    ..y = 2
    ..radius = 10;

  print(point1);

  var point2 = new Point()
    ..x = 3
    ..y = 3
    ..radius = 3;
}
