import 'dart:io';

void main() {
  // Question No. 5

  try {
    stdout.write("Please Enter Your Room Temperature. ");
    num roomTemp = num.parse(stdin.readLineSync()!);
    if (roomTemp <= 0) {
      print("Freezing Weather!");
    } else if (roomTemp > 0 && roomTemp <= 10) {
      print("Very Cold Weather!");
    } else if (roomTemp > 10 && roomTemp <= 20) {
      print("Cold Weather!");
    } else if (roomTemp > 20 && roomTemp <= 30) {
      print("Beautiful Weather!");
    } else if (roomTemp > 30 && roomTemp <= 40) {
      print("Hot Weather!");
    } else {
      print("Very Hot Weather");
    }
  } catch (e) {
    print("Please Enter Correct Temperature!");
  }
}
