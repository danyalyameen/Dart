void main() {
  Map<String, dynamic> student1 = {"Name": "Danyal", "Rll No.": 659};
  Map<String, dynamic> student2 = {"Neme": "Umer", "Rol No.": 660};
  Map<String, dynamic> student3 = {"Ntme": "Shafaqat"};
  // Spread Operator
  Map students = {...student1, ...student2, ...student3};
  // Cascade Operator
  Map allstudents = {}
    ..addAll(student1)
    ..addAll(student2)
    ..addAll(student3);
  Map allStudents = {};
  // CRUD Operations

  // Add (Create) Operation
  student1["Marks"] = 1006;
  student2.putIfAbsent(
    "Marks",
    () => 1006,
  );
  student3.addAll({"Roll No.": 661, "Marks": 1006});
  allStudents.addEntries(student1.entries);
  allStudents.addEntries(student2.entries);
  allStudents.addEntries(student3.entries);
  print(student1);
  print(student2);
  print(student3);
  print(students);
  print(allstudents);
  print(allStudents);

  // Fetch (Read) Operation
  List haha = [
    {
      0: 0,
      1: [1],
    },
    {"2": "2"},
    {
      1: {
        "hehe": [
          {
            "hehe": {"haha": "bye"}
          }
        ],
      }
    },
  ];
  print(haha[2][1]["hehe"][0]["hehe"]["haha"]);

  // Update Operation
  student1["Marks"] = 1011;
  student2.update("Marks", (value) => 961);
  print(student1);
  print(student2);

  // Delete Operation
  student1.remove("Roll No.");
  student2.removeWhere(
    (key, value) => key.length > 5,
  );
  print(student1);
  print(student2);
  student1.clear();
  student2.clear();
  student3.clear();
  print(student1);
  print(student2);
  print(student3);
}
