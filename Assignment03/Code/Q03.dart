import 'dart:io';

void main() {
  // Input Number
  stdout.write("Enter a Number: ");
  int inputNumber = int.parse(stdin.readLineSync()!);

  // Sum of Number
  int sum = 0;

  // Calculating Sum
  while (inputNumber > 0) {
    sum += inputNumber % 10;
    inputNumber ~/= 10;
  }

  // Print sum
  print(sum);
}
