void main() {
  // List
  List<int> numbers = [
    436,
    646,
    1263,
    2742,
    586,
    485,
  ];

  // Greatest Number & Lowest Number
  int greatestNumber = 0;
  int lowestNumber = numbers
      .last; // If I assigned its value to 0 then 0 is the lowest number which remains unchanged. Therefore, I assigned it a dynamic value.

  // Finding Greatest Number
  for (var i = 0; i < numbers.length; i++) {
    greatestNumber > numbers[i] ? greatestNumber : greatestNumber = numbers[i];
    lowestNumber < numbers[i] ? lowestNumber : lowestNumber = numbers[i];
  }

  print("Greatest Number in the list is : $greatestNumber");
  print("Lowest Number in the list is : $lowestNumber");
}
