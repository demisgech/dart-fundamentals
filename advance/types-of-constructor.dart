// Types of constructor

// Default constructor

class DefaultConstructor {}

//  Default Constructor
class GenerativeConstructor {
  final int _value;

  // GenerativeConstructor(); // Default constructor

  // Generative constructor with initializing formal parameters:
  GenerativeConstructor(this._value);

  int get value => this._value;
}

// Named Constructor
class PointWithNamedConstructor {
  double x;
  double y;

  PointWithNamedConstructor(this.x, this.y);

  // Named Constructor
  PointWithNamedConstructor.origin() : x = 0, y = 0;
}

// Constant Constructor;

class ImmutablePoint {
  static const ImmutablePoint origin = ImmutablePoint(0, 0);
  final double _x;
  final double _y;

  // Constant constructor
  const ImmutablePoint(this._x, this._y);

  double get x => this._x;
  double get y => this._y;
}

// Redirect Constructor
class RedirectConstructor {
  final double x;
  final double y;

  // The main constructor for this class.
  RedirectConstructor(this.x, this.y);

  // Delegates to the main constructor.
  RedirectConstructor.alongXAxis(double x) : this(x, 0);

  RedirectConstructor.alongYAxis(double y) : this(0, y);
}

// Factory Constructor

class FactoryConstructor {
  final String name;
  final bool mute = false;

  static final Map<String, FactoryConstructor> _cache =
      <String, FactoryConstructor>{};

  factory FactoryConstructor(String name) {
    return _cache.putIfAbsent(
      name,
      () => FactoryConstructor._internalConstructor(name),
    );
  }

  FactoryConstructor._internalConstructor(this.name);

  factory FactoryConstructor.fromJson(Map<String, Object> json) {
    return FactoryConstructor(json['name'].toString());
  }

  void log(String msg) {
    if (!this.mute) {
      print(msg);
    }
  }
}
