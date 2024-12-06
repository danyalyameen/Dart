void main() {
  // Question No. 3

  int classHeld = 16;
  int classAttend = 10;
  num percentage = (classAttend * 100) / classHeld;
  if (percentage > 75) {
    print("You are allowed in Exam. Your Percentage is $percentage");
  } else {
    print(
        "You are Not Allowed in Exam Because Your Percentage is $percentage.");
  }
}
