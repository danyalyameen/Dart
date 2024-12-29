void main() {
  // List
  List<Map<String, dynamic>> studentDetails = [
    {
      'name': 'Zubair',
      'marks': [95, 90, 90],
      'section': 'A',
      'rollNumber': 401
    },
    {
      'name': 'Ali',
      'marks': [95, 92, 88],
      'section': 'B',
      'rollNumber': 402
    },
    {
      'name': 'Ahmad',
      'marks': [70, 65, 75],
      'section': 'C',
      'rollNumber': 403
    },
    {
      'name': 'Danyal',
      'marks': [90, 85, 95],
      'section': 'A',
      'rollNumber': 404
    },
    {
      'name': 'Mubeen',
      'marks': [95, 92, 80],
      'section': 'B',
      'rollNumber': 405
    },
    {
      'name': 'Fawad',
      'marks': [5, 15, 15],
      'section': 'C',
      'rollNumber': 406
    },
    {
      'name': 'Huzaifa',
      'marks': [20, 45, 25],
      'section': 'C',
      'rollNumber': 406
    },
  ];

  // Calculating Grades
  for (var element in studentDetails) {
    num sum = 0;
    for (var i = 0; i < element['marks'].length; i++) {
      sum += element['marks'][i];
    }
    num average = (sum / 300) * 100;
    switch (average) {
      case > 90:
        print("Student Name: ${element['name']}");
        print("Grade: A+");
        break;
      case > 80:
        print("Student Name: ${element['name']}");
        print("Grade: A");
        break;
      case > 70:
        print("Student Name: ${element['name']}");
        print("Grade: B+");
        break;
      case > 60:
        print("Student Name: ${element['name']}");
        print("Grade: B");
        break;
      case > 50:
        print("Student Name: ${element['name']}");
        print("Grade: C");
        break;
      case > 40:
        print("Student Name: ${element['name']}");
        print("Grade: D");
        break;
      case > 30:
        print("Student Name: ${element['name']}");
        print("Grade: E");
        break;
      default:
        print("Student Name: ${element['name']}");
        print("Grade: Fail");
    }
  }
}
