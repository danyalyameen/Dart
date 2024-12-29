import 'dart:io';
import 'dart:math';

void main() {
  // Input Number
  stdout.write("Enter a Number: ");
  int inputNumber = int.parse(stdin.readLineSync()!);

  // Calculating the Cube of Numbers till inputNumber

  for (var i = 1; i <= inputNumber; i++) {
    print("Number is : $i and Cube of $i is : ${pow(i, 3)}");
  }
}
