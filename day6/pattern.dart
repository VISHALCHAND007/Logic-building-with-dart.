import 'dart:io';

void main() {
  int n = 5;
  //1. Print half pyramid

  /*

      1
     1 2
    1 2 3 
   1 2 3 4 
  1 2 3 4 5

  */
  // printHalfPyramid(n);

  //2. Print hollow butterfly
  printHollowButterfly(n);
}

void printHollowButterfly(int n) {
  //top
  for (int i = 0; i < n; i++) {
    //starting pattern
    for (int a = 0; a <= i; a++) {
      printStarIfConditionSatisfies(a, 0, i);
    }

    //space
    for (int s = 0; s < (n - (i + 1)) * 2; s++) {
      stdout.write('  ');
    }

    //end pattern
    for (int a = 0; a <= i; a++) {
      printStarIfConditionSatisfies(a, 0, i);
    }

    //go to next line
    print('');
  }

  //bottom
  for (int i = n - 1; i >= 0; i--) {
    //starting pattern
    for (int a = 0; a <= i; a++) {
      printStarIfConditionSatisfies(a, 0, i);
    }

    //space
    for (int s = 0; s < (n - (i + 1)) * 2; s++) {
      stdout.write('  ');
    }

    //end pattern
    for (int a = 0; a <= i; a++) {
      printStarIfConditionSatisfies(a, 0, i);
    }

    //go to next line
    print('');
  }
}

void printStarIfConditionSatisfies(
  int value,
  int comparable1,
  int comparable2,
) {
  if (value == comparable1 || value == comparable2) {
    stdout.write('* ');
  } else {
    stdout.write('  ');
  }
}

void printHalfPyramid(int n) {
  for (int i = 0; i < n; i++) {
    //space
    for (int s = 0; s < n - (i + 1); s++) {
      stdout.write(' ');
    }
    //pattern
    for (int j = 0; j <= i; j++) {
      stdout.write('${j + 1} ');
    }
    //go to next line
    print('');
  }
}
