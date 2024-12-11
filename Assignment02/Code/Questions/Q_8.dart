void main() {
  List<Map<String, dynamic>> usersEligibility = [
    {'name': 'John', 'eligible': true},
    {'name': 'Alice', 'eligible': false},
    {'name': 'Mike', 'eligible': true},
    {'name': 'Sarah', 'eligible': true},
    {'name': 'Tom', 'eligible': false},
  ];

  // Using Remove Where Method
  // usersEligibility.removeWhere(
  //   (element) {
  //     return element['eligible'] == false;
  //   },
  // );

  // Using Retain Where Method
  usersEligibility.retainWhere(
    (element) {
      return element['eligible'] == true;
    },
  );

  print(usersEligibility);
}
