void main() {
  List<int> numbers = [1, 4, 5, 6, 2, 0, 7, 10, 13, 11, 14];
  List squareNumbers = numbers.map(
    (e) {
      return e * e;
    },
  ).toList();
  print(numbers);
  print(squareNumbers);
}
