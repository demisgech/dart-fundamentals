class Shape {}

class Rectangle extends Shape {}

class Circle extends Shape {}

class Square extends Shape {}

abstract interface class Roundable {
  void makeRound();
}

class RoundedRectangle extends Rectangle implements Roundable {
  @override
  void makeRound() {
    throw UnimplementedError();
  }
}
