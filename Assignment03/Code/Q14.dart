import 'dart:io';

void main() {
  // List of User Credentials
  List<Map<String, dynamic>> userCredentials = [
    {
      "email": "danyal@gmail.com",
      "password": "hello123",
    },
    {
      "email": "huzaifa@example.com",
      "password": "nicehowareyou",
    },
    {
      "email": "aliyonus@yahoo.com",
      "password": "meinnahibtaoga",
    },
    {
      "email": "mubeenyameen@gmail.com",
      "password": "Flutter Developer",
    }
  ];

  bool isSuccessfullyLogin = false;

  while (isSuccessfullyLogin == false) {
    stdout.write("Enter Email: ");
    String email = stdin.readLineSync()!;
    for (var credentials in userCredentials) {
      if (email == credentials["email"]) {
        while (isSuccessfullyLogin == false) {
          stdout.write("Enter Password: ");
        String password = stdin.readLineSync()!;
        if (password == credentials["password"]) {
            print("Successfully Logedin.");
            isSuccessfullyLogin = true;
          } else {
            print("----------------------------------------------");
            print("Password is Incorrect. Please try another one.");
            print("----------------------------------------------");
          }
        }
      } else {
        if (credentials == userCredentials.last && isSuccessfullyLogin == false) {
          print("-------------------------------------------");
          print("Email is Incorrect. Please try another one.");
          print("-------------------------------------------");
        }
      }
    }
  }
}
