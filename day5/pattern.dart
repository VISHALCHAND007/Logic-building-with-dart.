import 'dart:io';

void main() {
  int n = 5;
  //1. butterfly pattern
  // printButterfly(n);

  //2. solid rhombus
  // printSolidRhombus(n);

  //3. hollow parellelogram
  // printHollowParallelogram(n);

  //4. pascal's triangle
  printPascalsTriangle(n);
}

void printButterfly(int n) {
  //top
  for (int i = 0; i < n; i++) {
    ///first triangle
    for (int j = 0; j <= i; j++) {
      stdout.write('* ');
    }

    ///space
    for (int s = 0; s < (n - (i + 1)) * 2; s++) {
      stdout.write('  ');
    }

    ///second triangle
    for (int k = 0; k <= i; k++) {
      stdout.write('* ');
    }

    //go to next line
    print('');
  }
  //bottom
  for (int i = n - 1; i >= 0; i--) {
    ///first triangle
    for (int j = 0; j <= i; j++) {
      stdout.write('* ');
    }

    ///space
    for (int s = 0; s < (n - (i + 1)) * 2; s++) {
      stdout.write('  ');
    }

    ///second triangle
    for (int k = 0; k <= i; k++) {
      stdout.write('* ');
    }

    //go to next line
    print('');
  }
}

void printSolidRhombus(int n) {
  //top
  for (int i = 0; i < n; i++) {
    //space
    for (int s = 0; s < n - (i + 1); s++) {
      stdout.write(' ');
    }

    //pattern
    for (int k = 0; k <= i; k++) {
      stdout.write('* ');
    }
    print('');
  }

  //bottom
  for (int i = n - 1; i >= 0; i--) {
    //space
    for (int s = 0; s < n - (i + 1); s++) {
      stdout.write(' ');
    }

    //pattern
    for (int k = 0; k <= i; k++) {
      stdout.write('* ');
    }
    print('');
  }
}

void printHollowParallelogram(int n) {
  for (int i = 0; i < n; i++) {
    ///space
    for (int s = 0; s < n - (i + 1); s++) {
      stdout.write(' ');
    }

    ///pattern
    for (int j = 0; j < n; j++) {
      if (i == 0 || j == 0 || i == n - 1 || j == n - 1) {
        stdout.write('* ');
      } else {
        stdout.write('  ');
      }
    }

    //go to next line
    print('');
  }
}

void printPascalsTriangle(int n) {
  int num = 1;
  for (int i = 0; i < n; i++) {
    //space
    for (int s = 0; s < n - (i + 1); s++) {
      stdout.write(' ');
    }

    //pattern
    num = 1;
    for (int j = 0; j <= i; j++) {
      stdout.write('$num ');
      num = (num * ((i - j) / (j + 1))).toInt();
    }

    //go to next line
    print('');
  }
}

/*

                      1
                    1   1
                  1   2   1
                1   3   3   1
              1   4   6   4    1

  */

// void printPascalsTriangle(int n) {
//   List<List<int>> triangle = [];

//   for (int i = 0; i < n; i++) {
//     List<int> row = [];
//     for (int j = 0; j <= i; j++) {
//       //adding 1 at the first and last index of each row
//       if (j == 0 || j == i) {
//         row.add(1);
//       } else {
//         //adding elements in between
//         final previousRow = triangle[i - 1];
//         int element = previousRow[j - 1] + previousRow[j];
//         row.add(element);
//       }
//     }
//     triangle.add(row);
//   }
//   //printing with space
//   for (int i = 0; i < n; i++) {
//     for (int s = 0; s < n - (i + 1); s++) {
//       stdout.write(' ');
//     }
//     for (int element in triangle[i]) {
//       stdout.write('$element ');
//     }
//     print('');
//   }
// }
