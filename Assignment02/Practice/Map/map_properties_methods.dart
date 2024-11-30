void main() {
  Map<int, dynamic> map = {1: "Danyal", 2: "Mubeen", 3: "Fawad", 4: "Hamad"};
  // Properties
  print(map.entries);
  print(map.keys);
  print(map.values);
  print(map.length);
  print(map.isEmpty);
  print(map.isNotEmpty);
  print(map.runtimeType);

  // Methods
  map.containsKey(1);
  map.containsValue("Umer");
  map.forEach(
    (key, value) => print(value.length),
  );
}
