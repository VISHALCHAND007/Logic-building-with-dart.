import 'dart:io';

void main() {
  int n = 5;
  /*
  Question 1 ·

  Hollow right-angled triangle

  Print the following pattern for n = 5:

*
* *
*   *
*     *
* * * * *

*/
  // printHollowRightAngTriangle(n);

  //2.
  /*

    Question 2 · Easy
Inverted number triangle

Print this pattern for n = 5:
1 2 3 4 5
1 2 3 4
1 2 3
1 2
1

  */
  // printInvertedNumTriangle(n);

  //3.

  /*

    *
   * *
  *   *
 *     *
*       *
 *     *
  *   *
   * *
    *

  */
  // printHollowRhombus(n);

  //4.
  /*

    1
    0 1
    1 0 1
    0 1 0 1
    1 0 1 0 1

  */
  printNumStairCase(n);
}

void printHollowRightAngTriangle(int n) {
  for (int i = 0; i < n; i++) {
    //inner loop for printing numbers in each row
    //here the inner loop will run from 0 till i so that the * count is equal
    // to the num of row we have
    for (int j = 0; j <= i; j++) {
      if (j == 0 || j == i || i == n - 1) {
        stdout.write('* ');
      } else {
        stdout.write('  ');
      }
    }
    //go to next line
    print('');
  }
}

void printInvertedNumTriangle(int n) {
  for (int i = n; i >= 1; i--) {
    //this loop will run equal to i as well to keep the number same
    for (int j = 0; j < i; j++) {
      stdout.write('${j + 1} ');
    }

    //next line
    print('');
  }
}

void printHollowRhombus(int n) {
  //will be printed in two different loop one for the above triangle and one for
  //below

  ///top
  for (int i = 0; i < n; i++) {
    ///space
    for (int s = 0; s < n - (i + 1); s++) {
      stdout.write(' ');
    }

    ///pattern
    for (int j = 0; j <= i; j++) {
      if (j == 0 || j == i) {
        stdout.write('* ');
      } else {
        stdout.write('  ');
      }
    }
    print('');
  }

  ///bottom
  for (int i = n - 1; i >= 0; i--) {
    ///space
    for (int s = 0; s < n - (i + 1); s++) {
      stdout.write(' ');
    }

    ///pattern
    for (int j = 0; j <= i; j++) {
      if (j == 0 || j == i) {
        stdout.write('* ');
      } else {
        stdout.write('  ');
      }
    }
    print('');
  }
}

void printNumStairCase(int n) {
  for (int i = 0; i < n; i++) {
    for (int j = 0; j <= i; j++) {
      if ((i + j) % 2 == 0) {
        //if even write 1
        stdout.write('1 ');
      } else {
        // in case of odd write 0
        stdout.write('0 ');
      }
    }
    print('');
  }
}
