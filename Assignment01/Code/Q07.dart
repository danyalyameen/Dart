import 'dart:io';

void main() {
  // Question No. 7

  try {
    stdout.write("Please Enter Your Name: ");
    String studentName = stdin.readLineSync()!;
    stdout.write("Please Enter Your Roll No: ");
    String studentRollNo = stdin.readLineSync()!;
    stdout.write("Please Enter Your Class: ");
    String studentClass = stdin.readLineSync()!;
    int totalMarks = 500;
    stdout.write("Please Enter Your English Marks: ");
    int englishMarks = int.parse(stdin.readLineSync()!);
    stdout.write("Please Enter Your Urdu Marks: ");
    int urduMarks = int.parse(stdin.readLineSync()!);
    stdout.write("Please Enter Your Islamiyat Marks: ");
    int islamiyatMarks = int.parse(stdin.readLineSync()!);
    stdout.write("Please Enter Your Math Marks: ");
    int mathMarks = int.parse(stdin.readLineSync()!);
    stdout.write("Please Enter Your Computer Marks: ");
    int computerMarks = int.parse(stdin.readLineSync()!);
    int marksobtained =
        englishMarks + urduMarks + islamiyatMarks + mathMarks + computerMarks;
    num percentage = (marksobtained / totalMarks) * 100;
    print("----------------------- Marksheet -----------------------");
    print("Student Name:           $studentName");
    print("Student Roll No:        $studentRollNo");
    print("Student Class:          $studentClass");
    if (percentage <= 100 && marksobtained <= 500) {
      print("Student Obtained Marks: $marksobtained/$totalMarks");
      print("Percentage:             $percentage");
    } else {
      print("Please Enter Correct Marks!");
    }
    if (percentage >= 33 && percentage <= 40) {
      print("Grade:                  E");
    } else if (percentage > 40 && percentage <= 50) {
      print("Grade:                  D");
    } else if (percentage > 50 && percentage <= 60) {
      print("Grade:                  C");
    } else if (percentage > 60 && percentage <= 70) {
      print("Grade:                  B");
    } else if (percentage > 70 && percentage <= 80) {
      print("Grade:                  B+");
    } else if (percentage > 80 && percentage <= 90) {
      print("Grade:                  A");
    } else if (percentage > 90 && percentage <= 100) {
      print("Grade:                  A+");
    } else if (percentage > 100) {
      print("Please Enter Correct Marks!");
    } else {
      print("You are Fail!");
    }
  } catch (e) {
    print("Please Enter Correct Values!");
  }
}
