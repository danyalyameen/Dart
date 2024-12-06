void main() {
  List<String> list = ["Name", "Roll No.", "Class", "Marks", "Grades"];
  List<int> numbers = [1, 2, 3, 4, 5];
  List all = ["Name", "Danyal", "Roll No.", 1233, 4, 5, 6, "isStudent", true];

  // Properties

  print(list.length);
  print(list.runtimeType);
  print(list.first);
  print(list.last);
  print(list.elementAt(list.length ~/ 2));
  print(list.isEmpty);
  print(list.isNotEmpty);
  list.sort();
  print(list);
  print(list.reversed);
  print(list.firstOrNull);
  print(list.indexed);
  print(list.firstOrNull);
  print(list.lastOrNull);
  print(list.hashCode);
  print(list.nonNulls);
  print(list.iterator);

  // Methods

  // Any Method (Store any element which meets the condition)
  print(list.any(
    (element) => element.length == 5,
  ));
  // Map Method (Convert list to map and we also fetch keys and values)
  var map = list.asMap();
  print(map.values);
  // Every Method (Return True if the condition meets according to all elements otherwise false)
  print(list.every(
    (element) => element.length == 5,
  ));
  // Followed By Method (Add elements to list for only that time not permanently)
  print(list.followedBy(['Student ID', 'Bag']));
  // Get Range Method (Fetch Elements that are present between the list)
  print(list.getRange(1, 4));
  // Contains Method (Check Either the list contain that element or not)
  print(list.contains("Class"));
  // Element At or Null Check Method (Check the index is present if yes then fetch the value present on that index otherwise return null)
  print(list.elementAtOrNull(6));
  // Where Method (Store a list of that elements which meet the condition)
  var result = List.of(list.where(
    (element) => element.length <= 5,
  ));
  print(result);
  // First Where Method (Returns the first value which meets the condition)
  var firstWhere = list.firstWhere(
    (element) => element.length == 6,
  );
  print(firstWhere);
  // Last Where Method (Returns the last value which meets the condition)
  var lastWhere = list.lastWhere(
    (element) => element.length < 5,
  );
  // Index Where Method find the index of element which satisfy the condition from start
  print(list.indexWhere(
    (element) => element.length == 5,
  ));
  // Last Index Where Method find the index of element from last which satisfy the condition
  print(list.lastIndexWhere(
    (element) => element.length == 5,
  ));
  // Where Type Method returns that elements which meets the type you mentioned
  print(List.of(all.whereType<int>()));
  // Remove Where Method remove the elements which meets the condition
  all.removeWhere(
    (element) => element.runtimeType == int,
  );
  print(all);
  // Retain Where Method remove all the elements except who meets the condition
  all.retainWhere(
    (element) => element.runtimeType == String,
  );
  print(all);
  print(lastWhere);
  // Fold Method (Convert the whole list into single element)
  var sum = numbers.fold(
    0,
    (previousValue, element) => previousValue + element,
  );
  print(sum);
  // For Each Method (Giving a function which is applied on all elements in the list)
  list.forEach(print);
  // Join Method (Join All elements. We also specify how to difference between them using hyphen or space.)
  print(list.join('-'));
  // Sublist method is used to sublist a list
  print(list.sublist(0, 4));
  // Map in list
  var newlist = list.map(
    (e) => e.substring(2, 4),
  );
  print(newlist);
  // Reduce Method same as Fold only the difference is Initial Value
  list.reduce(
    (value, element) => value + element,
  );
  // Index of Method returns the index of the element which is passed
  print(list.indexOf("Class"));
  // Last Index of Method is same as index of but start searching from the end of the list
  print(list.lastIndexOf("Grades"));
  // Remove Range Method remove the elements which is present in the range
  all.removeRange(1, 3);
  print(all);
  // Set All Method Overrites the elements of the list but does not increase the length of the list
  list.setAll(3, ["455", "A+"]);
  print(list);
  // Skip Method Skip the elments in the list and create a new list in which that elements are skipped it is based on length and does not damage the orignal list
  var newlist1 = list.skip(3);
  print(List.of(newlist1));
  // Shuffle Method Randomize the Elements in the list
  list.shuffle();
  print(list);
  // Skip While Method Returns a new List of that element which are not meets the condition
  var result2 = list.skipWhile(
    (value) => value.length < 5,
  );
  print(List.of(result2));
  // Take fetch element according to count and returns a new list
  var result3 = List.of(list.take(3));
  print(result3);
  // Take while fetch only that elements which meets the condition and create a new list
  var result4 = List.of(list.takeWhile(
    (value) => value.length < 5,
  ));
  print(result4);
}
