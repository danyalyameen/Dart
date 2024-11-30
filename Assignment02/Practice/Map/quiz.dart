void main() {
  List<Map<String, dynamic>> studentRecords = [
    {"Name": "Danyal", "Roll No.": 659, "Marks": 1006},
    {"Name": "Umar", "Roll No.": 660, "Marks": 600},
    {"Name": "Shafaqat", "Roll No.": 661, "Marks": 801}
  ];

  studentRecords.forEach(
    (element) {
      return element.forEach(
        (key, value) {
          if (key == "Marks") {
            double percentage = (value / 1200) * 100;
            var roundedPercentage = percentage.toStringAsFixed(2);
            if (percentage >= 50) {
              print(
                  "You Succesffuly Passed the Exam and Your Percentage is $roundedPercentage");
            } else {
              print(
                  "Sorry, You are Fail and Your Percentage is $roundedPercentage");
            }
          }
        },
      );
    },
  );
}
