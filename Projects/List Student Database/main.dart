import 'dart:io';

void main() {
  // In this code list act as database to store all values
  List<Map<dynamic, dynamic>> database = [
    {
      "Name": "Danyal",
      "Email": "danyal@example.com",
      "Password": "Password",
      "Roll No.": 659,
      "Class": "11",
      "Grades": "A+"
    }
  ];

  bool isSelect = false;
  String selectedOption = "0";

  while (isSelect == false) {
    bool isCorrect = false;
    bool isSuccessfullySignIn = false;
    String email;
    bool isRestart = true;
    try {
      // For Repeat Sign In and Sign Up options
      if (selectedOption == "0") {
        print("----------------------------------------------------");
        print("Please Select One of the below Option: ");
        print("1. Sign Up");
        print("2. Sign In");
        stdout.write("Enter Option Number: ");
        selectedOption = stdin.readLineSync()!;
      }
      // Condition for Sign UP
      if (selectedOption == "1") {
        // To stop the while loop
        isSelect = true;
        // Input Email from the User
        print("----------------------------------------------------");
        stdout.write("Please Enter Your Email : ");
        email = stdin.readLineSync()!;
        // Use While loop to check the new Email which is Entered by the User after enter the incorrect email by chosing option 2
        while (isRestart == true) {
          // Use For In Loop to check email is match any of email already present or not
          for (var i in database) {
            // Condition to check Email
            if (i["Email"] == email) {
              // If user repeatedly Enter the incorrect Email which is already present in database. We also again and again show this message.
              while (isCorrect == false) {
                // User Choose the Option below
                print("----------------------------------------------------");
                print(
                    "This Email is Already Exists. Please Select One Option: ");
                print("1. Sign In");
                print("2. Try with a different Email");
                stdout.write("Enter Option Number: ");
                String enteredNumber = stdin.readLineSync()!;
                print("----------------------------------------------------");
                // For Sign In Option
                if (enteredNumber == "1") {
                  // Terminate While Loop
                  isCorrect = true;
                  // Terminate While Loop
                  isRestart = false;
                  // Restart Parent While Loop
                  isSelect = false;
                  // For Choose Direct Sign In Option
                  selectedOption = "2";
                } else if (enteredNumber == "2") {
                  // For Different Email
                  // Input Email from the User and store it into global email variable
                  stdout.write("Please Enter Your Email : ");
                  email = stdin.readLineSync()!;
                  // Terminate While Loop
                  isCorrect = true;
                  // Restart While Loop to check new email is already present in database or not
                  isRestart = true;
                } else {
                  // For Enter Invalid Option Number
                  print("Please Enter the Number Carefully!");
                }
              }
              // Terminate the For In Loop
              break;
            } else {
              if (i == database.last && i["Email"] != email) {
                // Map to store data and then add it to list
                Map<String, dynamic> map = {};
                // To Terminate While Loop
                isRestart = false;
                // Get Input From User After Check Email is Already Use or not
                stdout.write("Please Enter Your Password : ");
                String password = stdin.readLineSync()!;
                stdout.write("Please Enter Your Roll No. : ");
                String rollNo = stdin.readLineSync()!;
                stdout.write("Please Enter Your Name: ");
                String name = stdin.readLineSync()!;
                stdout.write("Please Enter Your Class: ");
                String studentClass = stdin.readLineSync()!;
                stdout.write("Please Enter Your Grades: ");
                String grades = stdin.readLineSync()!;
                print("----------------------------------------------------");
                // Add Data to Map
                map["Email"] = email;
                map["Password"] = password;
                map["Roll No."] = rollNo;
                map["Name"] = name;
                map["Class"] = studentClass;
                map["Grades"] = grades;
                print("Account Created Successfully!");
                // Add Map to List
                database.add(map);
                // To Restart the Parent Loop
                isSelect = false;
                // To Reset the Option and Make the Option Variable to Get Again Input From User
                selectedOption = "0";
              }
            }
          }
        }
      } else if (selectedOption == "2") {
        // Condition For Sign In
        // To Terminate Parent Loop
        isSelect = true;
        // Restart Until the User Successfully Sign In
        while (isSuccessfullySignIn == false) {
          // Get Input From User
          print("----------------------------------------------------");
          stdout.write("Please Enter Your Email : ");
          String signInEmail = stdin.readLineSync()!;
          stdout.write("Please Enter Your Password : ");
          String signInPassword = stdin.readLineSync()!;
          // Find Index to Fetch, Update and Delete the Data
          int index = database.indexWhere(
            (element) {
              return element["Email"] == signInEmail &&
                  element["Password"] == signInPassword;
            },
          );
          // For In Loop to Check Email is Registered or Not
          for (var i in database) {
            if (i["Email"] == signInEmail && i["Password"] == signInPassword) {
              // Terminate Sign In Parent While Loop After the Condition is True
              isSuccessfullySignIn = true;
              // Make Variable to Check User is Logout or Login
              bool isLogout = false;
              // To Manage State Until the User Logout or Delete Profile
              while (isLogout == false) {
                // Get Input From User
                print("----------------------------------------------------");
                print("Select the Option: ");
                print("1. View Profile");
                print("2. Update Profile");
                print("3. Delete Profile");
                print("4. Logout");
                stdout.write("Enter Option Number: ");
                String numberEntered = stdin.readLineSync()!;
                // Print Data Using Index
                if (numberEntered == "1") {
                  print(
                      "---------------------------------- Profile ----------------------------------");
                  print("Name : ${database[index]["Name"]}");
                  print("Email : ${database[index]["Email"]}");
                  print("Password : ${database[index]["Password"]}");
                  print("Roll No. : ${database[index]["Roll No."]}");
                  print("Class : ${database[index]["Class"]}");
                  print("Grades : ${database[index]["Grades"]}");
                } else if (numberEntered == "2") {
                  // Update Data Using Index
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
                } else if (numberEntered == "3") {
                  // Remove Data Using Index
                  // Remove Profile
                  database.removeAt(index);
                  // Terminate While Loop
                  isLogout = true;
                  // Restart Parent Loop
                  isSelect = false;
                  // Reset Selected Option
                  selectedOption = "0";
                } else if (numberEntered == "4") {
                  // Logout Profile
                  // Reset Selected Option
                  selectedOption = "0";
                  // Restart Parent Loop
                  isSelect = false;
                  // Terminate While Loop
                  isLogout = true;
                } else {
                  print("Please Select the Option Carefully!");
                }
              }
              break;
            } else {
              // For Error on Email and Password
              if (i == database.last) {
                // Restart the Sign In on Error
                var selectForSignIn = false;
                while (selectForSignIn == false) {
                  // Get Input From User
                  print("Email and Password is Invalid!");
                  print("1. Sign Up");
                  print("2. Try Again");
                  stdout.write("Enter Option Number: ");
                  selectedOption = stdin.readLineSync()!;
                  // For Direct Sign Up
                  if (selectedOption == "1") {
                    // Terminate While Loop
                    selectForSignIn = true;
                    // Restart Parent Loop
                    isSelect = false;
                    // Termiate Parent Sign In While Loop
                    isSuccessfullySignIn = true;
                  } else if (selectedOption == "2") {
                    // Terminate While Loop
                    selectForSignIn = true;
                    // Restart Parent Sign In While Loop
                    isSuccessfullySignIn = false;
                  } else {
                    // Print Warning
                    print("Please Select the Option Carefully!");
                  }
                }
              }
            }
          }
        }
      } else {
        // Restart Parent Loop
        selectedOption = "0";
      }
    } catch (e) {}
  }
}
