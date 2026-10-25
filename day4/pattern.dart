import 'dart:io';

void main() {
  int n = 5;

  //1. Print a solid rhombus.

  /*

            * * * * *
          * * * * *
        * * * * *
      * * * * *
    * * * * *

  */

  // for (int i = 0; i < n; i++) {
  //   //space
  //   for (int s = n - (i + 1); s > 0; s--) {
  //     stdout.write('  ');
  //   }

  //   //rectangle
  //   for (int j = 0; j < n; j++) {
  //     stdout.write('* ');
  //   }

  //   //go to next line
  //   print('');
  // }

  //2. Print a number pyramid

  /*

          1
        2   2
      3   3   3
    4   4   4    4
  5   5   5   5    5
  */

  // for (int i = 0; i < n; i++) {
  //   //space
  //   for (int s = n - (i + 1); s > 0; s--) {
  //     stdout.write(' ');
  //   }

  //   //print the pattern
  //   for (int j = 0; j <= i; j++) {
  //     stdout.write('${i + 1} ');
  //   }

  //   //go to next line
  //   print('');
  // }

  //3. Print a palindromic number pyramid

  /*

                     1
                   2 1 2
                 3 2 1 2 3
               4 3 2 1 2 3 4
             5 4 3 2 1 2 3 4 5
  */

  for (int i = 1; i <= n; i++) {
    //space
    for (int s = (n - i) * 2; s > 0; s--) {
      stdout.write(' ');
    }

    //first half
    for (int f = i; f > 1; f--) {
      if (i == 1) {
        stdout.write(' ');
      } else {
        stdout.write('$f ');
      }
    }

    //second half
    for (int h = 1; h <= i; h++) {
      stdout.write('$h ');
    }

    //go to next line
    print('');
  }
}
