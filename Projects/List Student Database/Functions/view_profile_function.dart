import '../Main Folder/main.dart';

viewData({required int index}) {
  print(
      "---------------------------------- Profile ----------------------------------");
  print("Name : ${database[index]["Name"]}");
  print("Email : ${database[index]["Email"]}");
  print("Password : ${database[index]["Password"]}");
  print("Roll No. : ${database[index]["Roll No."]}");
  print("Class : ${database[index]["Class"]}");
  print("Grades : ${database[index]["Grades"]}");
}
