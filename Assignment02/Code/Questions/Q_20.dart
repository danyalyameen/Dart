void main() {
  Map<String, dynamic> car = {
    "brand": "Toyota",
    "color": "red",
    "isSedan": true,
  };

  car["isSedan"] == true && car["color"] == "red"
      ? print("Match")
      : print("No Match");
}
