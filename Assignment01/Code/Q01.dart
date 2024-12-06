import 'dart:io';

void main() {
  // Question No. 1

  try {
    stdout.write("Please Enter Length Value. ");
    num length = num.parse(stdin.readLineSync()!);
    stdout.write("Please Enter Width Value. ");
    num width = num.parse(stdin.readLineSync()!);
    if (length == width) {
      print("It is Square.");
    } else {
      print("It is Rectangle.");
    }
  } catch (e) {
    print("Please Enter a Valid Number!");
  }
}
