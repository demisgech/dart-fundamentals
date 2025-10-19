class Todo {
  final String who;
  final String what;

  const Todo(this.who, this.what);
}

@Todo("Yohannes", "Refactor this function later")
void calculate() {
  print("Metadata annotations");
}

void main() {
  calculate();
}
