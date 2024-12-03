import 'dart:io';

import '../Main Folder/main.dart';
import '../Functions/delete_function.dart';
import '../Functions/logout_profile.dart';
import '../Functions/update_function.dart';
import '../Functions/view_profile_function.dart';

signIn() {
  // To Terminate Parent Loop
  isSelect = true;
  // Restart Until the User Successfully Sign In
  while (isSuccessfullySignIn == false) {
    // Get Input From User
    print("----------------------------------------------------");
    stdout.write("Please Enter Your Email : ");
    signInEmail = stdin.readLineSync()!;
    stdout.write("Please Enter Your Password : ");
    signInPassword = stdin.readLineSync()!;
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
        isLogout = false;
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
          if (numberEntered == "1") {
            // View Data
            viewData(index: index);
          } else if (numberEntered == "2") {
            // Update Data Using Index
            updateData(index: index);
          } else if (numberEntered == "3") {
            // Remove Data Using Index
            deleteData(index: index);
          } else if (numberEntered == "4") {
            // Logout Profile
            logoutProfile();
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
}
