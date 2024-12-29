void main() {
  // List
  List<int> numbers = [1, 2, 4, -5, -2, -6, -8, 10, 3, -16, 12, -452, -423, 5252];

  // List of Negative Numbers
  int countNegativeNumbers = 0;

  // Sum of Negative Numbers
  int sum = 0;

  // Average of Negative Numbers
  num average = 0;

  // Finding Negative Numbers in List
  for (var i = 0; i < numbers.length; i++) {
    if (numbers[i] < 0) {
      sum += numbers[i];
      countNegativeNumbers++;
    }
    if (i == numbers.length - 1) {
      average = sum / countNegativeNumbers;
    }
  }

  print(average);
}
