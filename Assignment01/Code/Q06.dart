import 'dart:io';

void main() {
  // Question No. 6

  try {
    stdout.write("Please Enter One Alphabet: ");
    String letter = stdin.readLineSync()!;
    if (letter.length == 1 && letter.isNotEmpty) {
      String alphabet = letter.toLowerCase();
      if (alphabet == "a" ||
          alphabet == "e" ||
          alphabet == "i" ||
          alphabet == "o" ||
          alphabet == "u") {
        print("This Alphabet is Vowel.");
      } else {
        print("This Alphabet is Consonant.");
      }
    } else {
      print("Please Enter only one Alphabet!");
    }
  } catch (e) {
    print("Please Enter a Valid and One Alphabat Only!");
  }
}
