import 'models/models.dart';
import 'person.dart';
import 'services/user-service.dart';
import 'shapes/shape.dart' hide RoundedRectangle; // Import all except
import 'teacher.dart' show Teacher; // Hide all except
import 'utils/utils.dart';

// Lazy loading
import 'heavey_module.dart' deferred as heavy;

// part and part of for simplifying modules
import 'shapes.dart' as shapes;

void main() {
  var sum = getSum([1.1, 2.1, 3.22]);
  print("Sum: ${sum}");

  var product = getProduct([1, 2, 3, 4]);
  print("Product: ${product}");

  var person = Person("John", "Getachew");
  print("FullName: ${person.getFullName()}");
  print(person);

  var teacher = Teacher(1, "Alex", "John");
  print(teacher.getFullName());

  var shape = Shape();

  var service = new UserService(new User());
  var user = service.user;
  print(user);

  shapes.show();
}
