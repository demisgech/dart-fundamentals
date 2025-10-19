import 'customers.dart';

void main() {
  var first = new Customer(1, "John", 20);
  print(first.compareTo(first));
  var second = new Customer(1, "Zed", 20);

  print(second.compareTo(User(1, "Zec", 20)));
  print(second.compareTo(second));

  var studentOne = new Student(1, "Student 1", 23);
  var studentTwo = new Student(2, "Alex", 24);
  var result = studentOne.compareTo(studentTwo);
  print(result);
}
