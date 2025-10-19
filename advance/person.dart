class Person {
  final String _name;

  Person(this._name);

  String greet(String who) => "Hello,${who} I am ${_name}";
}

class Imposter implements Person {
  @override
  String greet(String who) => "Hello,${who}. Do you know who I am?";

  @override
  String get _name => "Imposter";

  String greetImposter(Person person) => person.greet("Imposter");
}

void show(Person person) {
  print(person.greet(person._name));
}

void main() {
  var impostor = new Imposter();
  print(impostor.greetImposter(Person("John")));
  print(impostor.greetImposter(Imposter()));
  show(impostor);
}
