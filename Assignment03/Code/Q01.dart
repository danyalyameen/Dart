void main() {
  // List
  List<int> numbers = [1, 2, 3, 6, 9, 13, 26, 45, 23, 65, 44];
  numbers.sort();

  // List of Even Numbers
  List<int> evenNumbers = [];
  // List of Odd Numbers
  List<int> oddNumbers = [];

  for (var i = numbers.first; i < numbers.length; i++) {
    if (numbers[i] % 2 == 0) {
      evenNumbers.add(numbers[i]);
    } else {
      oddNumbers.add(numbers[i]);
    }
  }

  print(evenNumbers);
  print(oddNumbers);
}
