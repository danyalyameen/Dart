void main() {
  Map<String, dynamic> world = {
    "Pakistan": {
      "capitalCity": "Islamabad",
      "currency": "PKR",
      "language": "Urdu"
    },
    "India": {
      "capitalCity": "New Delhi",
      "currency": "INR",
      "language": "Hindi"
    },
    "America": {
      "capitalCity": "Washinton, D.C.",
      "currency": "USD",
      "language": "English"
    },
    "China": {
      "capitalCity": "Beijing",
      "currency": "Yuan",
      "language": "Mandarin Chinese"
    },
  };

  print(world["Pakistan"]);
}
