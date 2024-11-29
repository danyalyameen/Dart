void main() {
  List names = ["Ahmad", "Abdul", "Ali", "Rehman"];

  // CRUD OPERATIONS

  // Add or Insert (Create)
  names.add("Yaqoob");
  names.addAll(
      ["Fawad", "Hamad", "Danyal", "Ghani", "Azam", "Umar", "Ali", "Ubed"]);
  names.insert(2, "Talha");
  names.insertAll(3, ["Hussain", "Husnain", "Mubeen"]);
  print(names);

  // Fetch (Read)
  print(names[3]);
  print(names.elementAt(4));

  // Update (Update)
  names[0] = 123;
  names.replaceRange(0, 4, ["Junaid", "Saqib", "Naveed"]);
  print(names);

  // Delete (Delete)
  names.remove("Danyal");
  names.removeAt(2);
  names.removeLast();
  names.removeRange(3, names.length - 3);
  names.removeWhere(
    (element) => element.length == 6,
  );
  names.retainWhere(
    (element) => element.length < 5,
  );
  names.clear();
  print(names);
}
