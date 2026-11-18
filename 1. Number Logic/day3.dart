import 'dart:io';

void main() {
  int n = 5;
  //1. Half pyramid with numbers

  /*

  1
  1 2 
  1 2 3
  1 2 3 4
  1 2 3 4 5

  */

  // for (int i = 0; i < n; i++) {
  //   for (int j = 1; j <= i + 1; j++) {
  //     stdout.write('$j ');
  //   }
  //   print('');
  // }

  //2. Inverted Half pyramid with numbers

  /*
 
  1 2 3 4 5
  1 2 3 4
  1 2 3
  1 2 
  1

  */

  // for (int i = 0; i < n; i++) {
  //   for (int j = 1; j <= n - i; j++) {
  //     stdout.write('$j ');
  //   }
  //   print('');
  // }

  //3. Floyd's triangle

  /*

    1
    2  3
    4  5  6
    7  8  9  10
    11 12 13 14 15
  
  */
  int num = 1;
  for (int i = 0; i < n; i++) {
    for (int j = 0; j <= i; j++) {
      stdout.write('$num ');
      num++;
    }
    print('');
  }

  //4. 0-1 triangle

  /*

    1
    0 1
    1 0 1
    0 1 0 1
    1 0 1 0 1
  
  */

  // for (int i = 0; i < n; i++) {
  //   for (int j = 0; j <= i; j++) {
  //     if ((i + j) % 2 == 0) {
  //       //if even print 1
  //       stdout.write('1 ');
  //     } else {
  //       //else 0
  //       stdout.write('0 ');
  //     }
  //   }
  //   print('');
  // }
}
