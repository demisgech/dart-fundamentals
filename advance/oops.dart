class Television {
  void turnOn() {
    print("Television is now ON");
  }
}

class SmartTelevision extends Television {
  @override
  void turnOn() {
    super.turnOn();
    print("Smart features are now available");
  }

  @override
  noSuchMethod(Invocation invocation) {
    return super.noSuchMethod(invocation);
  }
}

class CustomException implements Exception {
  final String message;
  CustomException(this.message);

  @override
  String toString() => 'CustomException: $message';
}

class InvalidAmountException implements Exception {
  String errMsg() => 'Invalid amount provided';
}

class InsufficientBalanceException implements Exception {
  String errMsg() => 'Insufficient balance for the transaction';
}

class BankAccount {
  double _balance;
  BankAccount([this._balance = 0.0]);

  double get balance => _balance;

  void set deposit(double amount) {
    if (amount < 0) {
      throw InvalidAmountException();
    }
    _balance += amount;
  }

  void set withdraw(double amount) {
    if (amount <= 0) {
      throw InvalidAmountException();
    }

    if (amount > _balance) {
      throw InsufficientBalanceException();
    }
    _balance -= amount;
  }
}

mixin Paintable on Shape {
  void paint() => print("Paint rectangle with color ${super.color}");
}

abstract class Drawable {
  void draw();
}

abstract class Shape extends Drawable {
  final String _color;

  Shape(this._color);
  double get area;
  String get color => _color;
}

class Circle extends Shape {
  final double _radius;
  Circle([this._radius = 0.0, String color = "transparent"]) : super(color);

  @override
  double get area => 3.14 * _radius * _radius;

  double get radius => _radius;

  @override
  void draw() => print("Drawing a circle with radius $_radius");
}

class Square extends Shape with Paintable {
  final double _side;
  Square([this._side = 0.0, String color = "transparent"]) : super(color);

  @override
  double get area => _side * _side;

  double get side => _side;

  @override
  void draw() => print("Drawing a square with side $_side");
}

class Rectangle extends Shape with Paintable {
  final double _length;
  final double _width;
  Rectangle([
    this._length = 0.0,
    this._width = 0.0,
    String color = "transparent",
  ]) : super(color);

  @override
  double get area => _length * _width;

  double get length => _length;
  double get width => _width;

  @override
  void draw() =>
      print("Drawing a rectangle with length $_length and width $_width");
}

class Triangle extends Shape with Paintable {
  final double _base;
  final double _height;
  Triangle([this._base = 0.0, this._height = 0.0, String color = "transparent"])
    : super(color);

  @override
  double get area => 0.5 * _base * _height;

  double get base => _base;
  double get height => _height;

  @override
  void draw() =>
      print("Drawing a triangle with base $_base and height $_height");
}

void main() {
  var triangle = Triangle(10, 10, 'red');
  triangle.draw();
  triangle.paint();
}

mixin Logger {
  void log(String message) {
    final timestamp = DateTime.now().toIso8601String();
    print('[$timestamp] $message');
  }
}

class Application with Logger {
  void run() {
    log('Application started');
    // Application logic here
    log('Application finished');
  }
}

mixin Musical {
  void playMusic() {
    print("Playing music...");
  }
}

mixin Demented {
  void playMusic() {
    print("Playing demented music...");
  }
}

class DJ with Musical, Demented {
  @override
  void playMusic() {
    super.playMusic();
  }
}

class Performer {
  void perform() {
    print("Performing...");
  }
}

class RockDJ extends Performer with Demented, Musical {
  @override
  void playMusic() {
    super.playMusic();
  }
}

class Musician extends Performer with Musical, Demented {
  @override
  void playMusic() {
    super.playMusic();
  }
}

interface class A {}

abstract class B {}

mixin C {}

abstract class D extends B with C implements A {}

abstract interface class E extends D {}

abstract mixin class F implements C {}

abstract interface class G extends B with F implements A {}

base class H {}

abstract base class I extends H {}

abstract base class J extends I implements A {}

sealed class K extends J {}

abstract final class L extends H implements A {}

final class M extends L {}

sealed class N extends M {}

final class O extends N {}

final class P extends N {}

interface class UIControl {}

abstract class TextBox implements UIControl {
  String get text;
  set text(String value);
}

class CheckBox implements UIControl {
  bool isChecked = false;

  void toggle() {
    isChecked = !isChecked;
  }
}

class RadioButton implements UIControl {
  bool isSelected = false;

  void select() {
    isSelected = true;
  }
}

final class Widget implements UIControl {
  void render() {
    print("Rendering widget");
  }
}

class TextBoxImpl implements TextBox {
  String _text = "";

  @override
  String get text => _text;

  @override
  set text(String value) {
    _text = value;
  }
}

void mainUI() {
  var textBox = TextBoxImpl();
  textBox.text = "Hello, World!";
  print(textBox.text);

  var checkBox = CheckBox();
  checkBox.toggle();
  print("Checkbox is checked: ${checkBox.isChecked}");

  var radioButton = RadioButton();
  radioButton.select();
  print("RadioButton is selected: ${radioButton.isSelected}");

  var widget = Widget();
  widget.render();
}
