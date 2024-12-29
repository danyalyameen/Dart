import 'dart:io';

void main() {
  // Input Number
  stdout.write("Enter a Number: ");
  int inputNumber = int.parse(stdin.readLineSync()!);

  // Factorial
  int factorial = 1;

  // Finding Factorial of Input Number using for loop
  for (var i = 1; i <= inputNumber; i++) {
    factorial *= i;
  }

  // Print Factorial
  print(factorial);
}
