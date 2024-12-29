import 'dart:io';

void main() {
  // Input Number
  stdout.write("Enter a Number: ");
  int inputNumber = int.parse(stdin.readLineSync()!);

  // Creating Table
  for (var i = 1; i <= 10; i++) {
    print("$inputNumber X $i = ${inputNumber * i}");
  }
}
