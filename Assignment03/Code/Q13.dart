import 'dart:io';

void main() {
  // Printing Number Pattern 2
  int n = 5;
  for (var i = 1; i < n; i++) {
    for (var j = 1; j <= i; j++) {
      stdout.write(i);
    }
    print("");
  }
}
