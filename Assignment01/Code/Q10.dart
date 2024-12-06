import 'dart:io';

void main() {
  // Question No. 10

  try {
    stdout.write("Please Enter Number 1: ");
    int num1 = int.parse(stdin.readLineSync()!);
    stdout.write("Please Enter Number 2: ");
    int num2 = int.parse(stdin.readLineSync()!);
    stdout.write("Please Enter Number 3: ");
    int num3 = int.parse(stdin.readLineSync()!);
    if (num1 > num2 && num1 > num3) {
      print("$num1 is the Greatest Number.");
    } else if (num2 > num1 && num2 > num3) {
      print("$num2 is the Greatest Number.");
    } else {
      print("$num3 is the  Greatest Number.");
    }
    if (num1 < num2 && num1 < num3) {
      print("$num1 is the Lowest Number.");
    } else if (num2 < num1 && num2 < num3) {
      print("$num2 is the Lowest Number.");
    } else {
      print("$num3 is the Lowest Number.");
    }
  } catch (e) {
    print("Please Enter Valid Numbers!");
  }
}
