void main() {
  // List
  List<int> numbers = [3, 9, 1, 6, 4, 2, 8, 5, 7, 6, 435, 412, 12, 24, 64, 128,];

  // Greatest Number
  int greatestNumber = 0;

  // Finding Greatest Number
  for (var i = 0; i < numbers.length; i++) {
    greatestNumber > numbers[i] ? greatestNumber : greatestNumber = numbers[i];
  }

  print("Greatest Number in the list is : $greatestNumber");
}
