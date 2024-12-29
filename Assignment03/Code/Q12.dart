import 'dart:io';

void main() {
  int n = 5;
  for (var i = 1; i < n; i++) {
    for (var j = 1; j <= i; j++) {
      stdout.write(j);
    }
    print("");
  }
}
