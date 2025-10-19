import 'Person.dart';

class Teacher extends Person {
  int _id;

  Teacher(int id, String firstName, String lastName)
    : _id = id,
      super(firstName, lastName);

  int get id => _id;
  set id(int value) {
    this._id = value;
  }

  @override
  String getFullName() {
    return "Teacher " + super.getFullName();
  }
}

class Student extends Person {
  Student(String firstName, String lastName) : super(firstName, lastName);
}
