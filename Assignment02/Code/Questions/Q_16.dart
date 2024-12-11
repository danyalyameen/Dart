void main() {
  List<int> numbers = [1, 1, 4, 5, 6, 2, 5, 0, 1, 4, 6, 7, 7, 10, 13, 11, 14];
  List evenNumbers = numbers.where(
    (element) {
      return element % 2 == 0;
    },
  ).toList();
  print(evenNumbers);
}
