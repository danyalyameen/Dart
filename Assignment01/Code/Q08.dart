import 'dart:io';

void main() {
  // Question No. 8

  try {
    stdout.write("Please Enter a Number: ");
    int number = int.parse(stdin.readLineSync()!);
    if (number % 2 == 0) {
      print("Even Number!");
    } else {
      print("Odd Number!");
    }
  } catch (e) {
    print("Please Enter a Valid Number!");
  }
}
