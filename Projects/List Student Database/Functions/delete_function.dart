import '../Main Folder/main.dart';

deleteData({required int index}) {
  // Remove Profile
  database.removeAt(index);
  // Terminate While Loop
  isLogout = true;
  // Restart Parent Loop
  isSelect = false;
  // Reset Selected Option
  selectedOption = "0";
}
