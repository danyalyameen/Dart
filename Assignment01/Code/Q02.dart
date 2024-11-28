import 'dart:io';

void main() {
  // Question No. 2

  try {
    stdout.write("Please Enter Your Age Ali. ");
    int aliAge = int.parse(stdin.readLineSync()!);
    stdout.write("Please Enter Your Age Saif. ");
    int saifAge = int.parse(stdin.readLineSync()!);
    if (aliAge > saifAge) {
      print("Ali is older than Saif.");
    } else {
      print("Saif is older than Ali.");
    }
  } catch (e) {
    print("Please Enter a valid Age!");
  }
}
