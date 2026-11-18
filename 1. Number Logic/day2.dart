import 'dart:io';

void main() {
  int n = 5;

  //1. half pyramid

  /*
  *
  * * 
  * * *
  * * * *
  * * * * *
  */
  // for (int i = 0; i < n; i++) {
  //   for (int j = 0; j <= i; j++) {
  //     stdout.write('* ');
  //   }
  //   print('');
  // }

  //2. inverted half pyramid

  /*
  * * * * * 
  * * * * 
  * * * 
  * * 
  *  
  */

  // for (int i = n; i > 0; i--) {
  //   for (int j = 0; j < i; j++) {
  //     stdout.write('* ');
  //   }
  //   print('');
  // }

  //3. half pyramid rotated by 180 deg.

  /*

          * 
        * * 
      * * * 
    * * * * 
  * * * * * 

  */
  for (int i = 0; i < n; i++) {
    //space
    for (int s = n - 1; s > i; s--) {
      stdout.write('  ');
    }

    for (int j = 0; j <= i; j++) {
      stdout.write('* ');
    }

    print('');
  }
}
