class Person {
  String firstName = "";
  String lastName = "";

  Person(String firstName, String lastName) {
    this.firstName = firstName;
    this.lastName = lastName;
  }

  String fullName() {
    return this.firstName + " " + this.lastName;
  }
}

abstract class Runnable {
  void run();
}

interface class Draggable {}

class Teacher extends Person implements Runnable, Draggable {
  Teacher(super.firstName, super.lastName);

  String fullName() {
    return "Instructor " + super.fullName();
  }

  @override
  void run() {
    print("Running...");
  }
}

void main() {
  // print("Hello World");
  var teacher = new Teacher("John", "Getachew");
  print(teacher.fullName());
  teacher.run();
}
