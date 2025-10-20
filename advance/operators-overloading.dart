class Pair<Key, Value> {
  Key first;
  Value second;

  Pair(this.first, this.second);

  @override
  String toString() {
    return 'Pair($first, $second)';
  }
}

class IndexOutOfBoundsError extends Error {}

class ArrayPair<T> {
  final List<T> _data = <T>[];
  ArrayPair(T value) {
    this._data.add(value);
  }

  T operator [](int index) {
    if (index < 0 || index >= _data.length) {
      throw IndexOutOfBoundsError();
    }
    return _data[index];
  }

  void add(T value) {
    _data.add(value);
  }

  void remove(T value) {
    _data.remove(value);
  }

  List<T> getAll() => this._data;
}

void main() {
  var pairArray = ArrayPair<Pair<int, String>>(Pair(1, "Hello"))
    ..add(Pair(2, "World"))
    ..add(Pair(3, "!"));

  for (var data in pairArray.getAll()) {
    print(data);
  }

  print(pairArray[0]);
  var line1 = Line<double>(10);
  var line2 = Line<double>(11);
  var line3 = line1 * line2;
  print(line3);

  var first = Vector(1, 0);
  var second = Vector(2, 3);
  var third = first + second;
  print(third);
  third = first - second;
  print(third);

  var isEqualVector = first == second;

  List<Shape> shapes = [Rectangle(), Circle(), Square()];
  for (var shape in shapes) {
    shape.draw();
  }
}

class ZeroDivisionError extends Error {}

class Line<T extends num> {
  T _length;

  Line(this._length);

  T get length => this._length;

  void set length(T length) {
    this._length = length;
  }

  Line<T> operator +(Line<T> other) {
    return Line<T>((this._length + other.length) as T);
  }

  Line<T> operator -(Line<T> other) {
    return Line<T>((this._length - other.length) as T);
  }

  Line<T> operator *(Line<T> other) {
    return Line<T>((this._length * other.length) as T);
  }

  Line<T> operator /(Line<T> other) {
    if (other.length == 0) throw new ZeroDivisionError();
    return Line<T>((this._length / other.length) as T);
  }

  @override
  String toString() {
    return "Line(${this.length})";
  }
}

class Vector<T extends num> {
  final T _x;
  final T _y;

  Vector(this._x, this._y);

  Vector<T> operator +(Vector<T> other) =>
      Vector((_x + other.x) as T, (_y + other.y) as T);

  Vector<T> operator -(Vector<T> other) =>
      Vector((_x - other.x) as T, (_y - other.y) as T);

  bool operator ==(Object other) =>
      other is Vector && this.x == other.x && this.y == other.y;

  T get x => this._x;
  T get y => this._y;

  @override
  String toString() {
    return "Vector($_x,$_y)";
  }
}

abstract class Shape {
  void draw();
}

class Rectangle extends Shape {
  @override
  void draw() => print("Drawing a rectangle");
}

class Circle extends Shape {
  @override
  void draw() => print("Drawing a circle");
}

void renderShape(Shape shape) {
  shape.draw();
}

class Square extends Shape {
  @override
  void draw() => print("Drawing a square");
}
