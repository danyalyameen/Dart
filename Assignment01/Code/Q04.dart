import 'dart:io';

void main() {
  // // Question No. 4

  try {
    stdout.write("Please Enter Temperature in Celsius. ");
    num celsiusTemp = num.parse(stdin.readLineSync()!);
    num fahrenheitTemp = (celsiusTemp * (9 / 5)) + 32;
    num roundedTemp = num.parse(fahrenheitTemp.toStringAsFixed(3));
    print("Temperature in Fahrenheit is $roundedTemp F.");
  } catch (e) {
    print("Please Enter Correct Temperature!");
  }
}
