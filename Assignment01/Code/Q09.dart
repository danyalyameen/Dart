import 'dart:io';

void main() {
  // Question No. 9

  try {
    stdout.write("Please Enter a Number: ");
    int number = int.parse(stdin.readLineSync()!);
    if (number % 2 == 0) {
      if (number % 5 == 0) {
        print("The Given Number is Even Number and also divisible by 5.");
      } else {
        print("The Given Number is Even Number but cannot be divisible by 5.");
      }
    } else {
      if (number % 7 == 0) {
        print("The Given Number is Odd Number and also divisible by 7.");
      } else {
        print("The Given Number is Odd Number but cannot be divisible by 7.");
      }
    }
  } catch (e) {
    print("Please Enter a Valid Number!");
  }
}
