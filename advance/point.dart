import 'dart:math' as Math;

class Point {
  double _x;
  double _y;

  Point({required double x, required double y}) : _y = y, _x = x;

  static Point Zero() {
    return new Point(x: 0, y: 0);
  }

  get x => this._x;
  set x(double value) {
    this._x = value;
  }

  get y => this._y;

  set y(double value) {
    this._y = value;
  }

  double distanceTo(Point other) {
    // var dx = this.x - other.x;
    // var dy = this.y - other.y;
    // var dxSquare = Math.pow(dx, 2);
    // var dySquare = Math.pow(dy, 2);
    // return Math.sqrt(dxSquare + dySquare);

    return Math.sqrt(
      Math.pow((this._x - other._x), 2) + Math.pow((this._y - other._y), 2),
    );
  }

  @override
  String toString() => "Point(x: $x,y: $y)";

  String toJson() {
    return '{ "x" : ${this._x}, "y" : ${this._y}}';
  }
}

class ImmutablePoint {
  final double _x;
  final double _y;
  const ImmutablePoint(this._x, this._y);

  double get x => this._x;
  double get y => this._y;
}

void main() {
  var first = new Point(x: 1, y: 1);
  print(Point.Zero());
  print(first);
  var second = new Point(x: 4, y: 5);
  print(second);

  var distance = first.distanceTo(second);
  print("Distance: ${distance}");

  var pointAtZero = Point.Zero();
  distance = pointAtZero.distanceTo(second);
  print("Distance: ${distance}");

  print(first.toJson());

  var pointAndLine = const {
    "point": const [const ImmutablePoint(0, 0)],
    "line": const [const ImmutablePoint(1, 1), const ImmutablePoint(2, 3)],
  };
}
