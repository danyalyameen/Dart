void main() {
  List<String> duplicateNames = [
    "Danyal",
    "Mubeen",
    "Fawad",
    "Hamad",
    "Mubeen",
    "Danyal",
    "Ibrahim",
    "Hadi",
    "Ibrahim"
  ];

  List<String> names = [];
  duplicateNames.forEach(
    (element) {
      return names.contains(element)
          ? print("$element is duplicate")
          : names.add(element);
    },
  );
  print(names);
}
