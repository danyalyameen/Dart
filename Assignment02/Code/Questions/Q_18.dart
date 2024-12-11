void main() {
  Map<String, dynamic> person = {
    "name": "John",
    "age": 25,
    "isStudent": true,
  };

  person["isStudent"] == true && person["age"] > 18
      ? print("${person["name"]} is Eligible")
      : print("${person["name"]} is Not Eligible");
}
