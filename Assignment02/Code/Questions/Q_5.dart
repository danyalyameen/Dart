void main() {
  Map<String, dynamic> persons = {
    "name": "Danyal",
    "phone": "023092304",
    "male": true,
    "age": 17,
    "country": "Pakistan",
  };

  List keysLengthFour = [];
  List keysLengthNotFour = [];
  // Where Method is the Method of List Not Map. So, I use forEach instead of Where Method
  persons.forEach(
    (key, value) {
      key.length == 4 ? keysLengthFour.add(key) : keysLengthNotFour.add(key);
    },
  );
  print(keysLengthFour);
  print(keysLengthNotFour);
}
