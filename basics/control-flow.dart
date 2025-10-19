// Control flow

void main() {
  // Conditional Statements

  int first = 5;
  int second = 6;
  int third = 4;

  if (first >= second && first >= third) {
    print("${first} is greater from ${second} and ${third}");
  } else if (second >= first && second >= third) {
    print("${second} is greater from ${first} and ${third}");
  } else {
    print("${third} is greater from ${first} and ${second}");
  }

  String user = "Guest".toUpperCase();

  switch (user) {
    case "ADMIN":
      print("Admin User");
      break;
    case "GUEST":
      print("Guest User");
      break;
    default:
      print("Unknown User");
  }

  //  Loops
  // for loop
  print("For loop....");
  for (var i = 0; i < 5; i++) {
    print("i: ${i}");
  }

  // while loop

  print("While loop....");
  int i = 0;
  while (i < 5) {
    print("i: ${i}");
    i++;
  }

  // do...while loop
  print("do..while loop....");
  int j = 0;
  do {
    print("j: ${j}");
    j++;
  } while (j < 5);

  // for...in loop

  print("for...in loop....");
  List<String> colors = ["Red", "Green", "Blue", "Yellow"];

  for (var color in colors) {
    print(color);
  }

  // Break and continue;

  var initial = 0;
  while (true) {
    if (initial >= 2) break;
    print("I am running...");
    initial++;
  }

  for (var i = 1; i <= 5; i++) {
    if (i == 3) {
      print("Three has been jumped");
      continue;
    }
    print("i: ${i}");
  }
}
