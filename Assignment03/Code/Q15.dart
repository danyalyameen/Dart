void main() {
  List<int> numbers = [
    23,
    3,
    2,
    5,
    3,
    4,
    -8,
    -15,
    1,
    6,
    9,
    8,
    54,
    34,
    63,
  ];

  for (var number in numbers) {
    if (number > 5) {
      print(number);
    }
  }
}
