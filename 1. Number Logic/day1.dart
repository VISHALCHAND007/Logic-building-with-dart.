import 'dart:io';

void main() {
  ///1. create a rectangle.
  int n = 5;
  // for (int i = 0; i < n; i++) {
  //   for (int j = 0; j < n; j++) {
  //     stdout.write('* ');
  //   }
  //   stdout.writeln();
  // }

  //parallelogram
  // for (int i = n; i > 0; i--) {
  //   //space
  //   for (int s = i - 1; s > 0; s--) {
  //     stdout.write('  ');
  //   }

  //   //rectangle
  //   for (int j = 0; j < n; j++) {
  //     stdout.write('* ');
  //   }
  //   stdout.writeln();
  // }

  //hollow rectangle
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      if (i == 0 || j == 0 || i == n - 1 || j == n - 1) {
        stdout.write('* ');
      } else {
        stdout.write('  ');
      }
    }
    print('');
  }
}
