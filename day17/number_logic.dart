import 'dart:math';

import '../day9/number_logic.dart';

void main() {
  /*
  
Question 1: Check whether a number is a Strong Number
A Strong Number is a number whose sum of the factorials of its digits equals the original number.

Examples:
- 145 → true (1! + 4! + 5! = 145)
- 2 → true
- 40585 → true
- 123 → false
- 10 → false


*/
  // print(checkStrongNumber(10));

  /*

Question 2: Check whether a number is an Automorphic Number
An Automorphic Number is a number whose square ends with the number itself.

Examples:
- 5 → true (5² = 25)
- 6 → true (6² = 36)
- 25 → true (25² = 625)
- 76 → true (76² = 5776)
- 7 → false (7² = 49)
- 12 → false (12² = 144)
  
  */

  print(isAutomorphicNum(25));
}

bool checkStrongNumber(int num) {
  int result = 0, tempNum = num;

  if (num <= 0) return false; // for 0 it is false as well because 0! = 1

  while (num > 0) {
    final lastDigit = num % 10;
    num ~/= 10;

    result += getFactorial(lastDigit);
  }

  return result == tempNum;
}

int getFactorial(int num) {
  int factorial = 1;

  if (num <= 0) return factorial;

  while (num > 1) {
    factorial *= num;
    num--;
  }

  return factorial;
}

bool isAutomorphicNum(int num) {
  if (num < 0) return false;

  final sq = pow(num, 2).toInt();
  final lastDigit = extractDigits(sq, getNumOfDigits(num));

  return num == lastDigit;
}

int extractDigits(int num, int numOfDigits) {
  if (numOfDigits == 1) return num % 10;

  int result = 0;
  if (numOfDigits > 0) {
    while (numOfDigits > 0) {
      final lastDigit = num % 10;
      num ~/= 10;
      result = result * 10 + lastDigit;

      numOfDigits--;
    }
    //since the output is reversed
    result = reverse(result);
  }
  return result;
}

int getNumOfDigits(int num) {
  int result = 0;

  if (num == 0) return 1;

  while (num > 0) {
    result++;

    //transform
    num ~/= 10;
  }
  return result;
}
