void main() {
  Map<String, dynamic> user = {
    "name": "Umar",
    "isAdmin": true,
    "isActive": false,
  };

  user["isAdmin"] == true && user["isActive"] == true
      ? print("Active Admin")
      : print("Not an Active Admin");
}
