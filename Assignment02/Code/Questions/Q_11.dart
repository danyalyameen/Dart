import 'dart:io';

void main() {
  List<String> names = [
    "Danyal",
    "Mubeen",
    "Fawad",
    "Hamad",
    "Hadi",
    "Ibrahim",
    "Rehan",
    "Umar",
    "Shafaqat"
  ];

  List<String> requiredNames = [];

  print("Please Enter Number which is less then or equal to ${names.length}");
  stdout.write("Enter Number: ");
  int number = int.parse(stdin.readLineSync()!);

  for (var i = 1; i <= number; i++) {
    requiredNames.add(names[i - 1]);
  }
  print(requiredNames);
}
