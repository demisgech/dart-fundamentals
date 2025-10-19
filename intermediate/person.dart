class Person {
  String _firstName;
  String _lastName;
  Person(this._firstName, this._lastName);

  String get firstName => _firstName;

  set firstName(String value) {
    _firstName = value;
  }

  String get lastName => _lastName;

  set lastName(String value) {
    _lastName = value;
  }

  String getFullName() => "${this._firstName} ${this._lastName}";

  @override
  String toString() {
    return "Person{firstName: ${this._firstName},lastName: ${this._lastName}}";
  }
}
