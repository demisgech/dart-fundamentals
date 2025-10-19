class User {
  final int _id;
  String _name;
  int _age;

  User(this._id, this._name, this._age);

  int get id => this._id;

  String get name => this._name;

  set name(String name) {
    this._name = name;
  }

  int get age => this._age;

  set age(int age) {
    this._age = age;
  }
}

class Customer<T extends User> extends User implements Comparable<T> {
  Customer(super.id, super.name, super.age);
  @override
  int compareTo(T other) {
    return this.name.compareTo(other.name);
  }
}

class Student extends User implements Comparable<Student> {
  // Student(int id, String name, int age) : super(id, name, age);
  // or

  Student(super.id, super.name, super.age);

  @override
  int compareTo(Student other) {
    if (this.age > other.age) return 1;
    if (this.age == other.age) return 0;
    return -1;
  }
}
