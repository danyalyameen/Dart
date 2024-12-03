import 'dart:io';

import '../Main Folder/main.dart';

updateData({required int index}) {
  // To Restart Until the User Enter Correct Option Number
  bool isSuccessfullyUpdate = false;
  while (isSuccessfullyUpdate == false) {
    // Get Input
    print(
        "------------------------------------ Update ------------------------------------");
    print("1. Update Name");
    print("2. Update Email");
    print("3. Update Password");
    print("4. Update Roll No.");
    print("5. Update Class");
    print("6. Update Grades");
    print("7. Exit");
    stdout.write("Enter Option Number: ");
    String number = stdin.readLineSync()!;
    // Update Profile Using Index
    if (number == "1") {
      print(
          "------------------------------------ Update ------------------------------------");
      stdout.write("Enter Name: ");
      String name = stdin.readLineSync()!;
      database[index]["Name"] = name;
    } else if (number == "2") {
      print(
          "------------------------------------ Update ------------------------------------");
      stdout.write("Enter Email: ");
      signInEmail = stdin.readLineSync()!;
      database[index]["Email"] = signInEmail;
    } else if (number == "3") {
      print(
          "------------------------------------ Update ------------------------------------");
      stdout.write("Enter Password: ");
      signInPassword = stdin.readLineSync()!;
      database[index]["Password"] = signInPassword;
    } else if (number == "4") {
      print(
          "------------------------------------ Update ------------------------------------");
      stdout.write("Enter Roll No. : ");
      String rollNo = stdin.readLineSync()!;
      database[index]["Roll No."] = rollNo;
    } else if (number == "5") {
      print(
          "------------------------------------ Update ------------------------------------");
      stdout.write("Enter Class: ");
      String studentClass = stdin.readLineSync()!;
      database[index]["Class"] = studentClass;
    } else if (number == "6") {
      print(
          "------------------------------------ Update ------------------------------------");
      stdout.write("Enter Grades: ");
      String grades = stdin.readLineSync()!;
      database[index]["Grades"] = grades;
    } else if (number == "7") {
      isSuccessfullyUpdate = true;
    } else {
      print("Please Enter the Number Carefully!");
    }
  }
}
