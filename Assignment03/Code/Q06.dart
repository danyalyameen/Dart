import 'dart:io';

void main() {
  // Input From User
  stdout.write("Enter a Name of Any Person: ");
  String inputString = stdin.readLineSync()!;

  // Spliting the String
  List<String> characters = inputString.split(" ").join().toLowerCase().split("");

  // Vowels
  List<String> vowels = ["a", "e", "i", "o", "u"];

  // Count Vowels Variable
  int countVowels = 0;

  // Counting Vowels
  for (var i = 0; i < characters.length; i++) {
    for (var element in vowels) {
      if (characters[i] == element) {
        countVowels++;
      }
    }
  }

  print("Number of Vowels in your entered Name is: $countVowels");
}
