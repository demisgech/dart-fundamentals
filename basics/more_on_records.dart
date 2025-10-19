class Icon {}

class ButtonItem {
  final String label;
  final Icon icon;
  final void Function()? onPressed;

  ButtonItem({
    required this.label,
    required this.icon,
    required this.onPressed,
  });

  bool get hasOnPressed => this.onPressed != null;

  @override
  String toString() {
    return "{ label: ${this.label}, icon: ${this.icon},onPressed: ${this.onPressed}}";
  }
}

void main() {
  List<ButtonItem> items = [
    ButtonItem(
      label: "Button I",
      icon: Icon(),
      onPressed: () => print("Button I pressed"),
    ),
    ButtonItem(
      label: "Button II",
      icon: Icon(),
      onPressed: () => print("On pressed"),
    ),
  ];

  items.forEach((button) => print(button));
}
