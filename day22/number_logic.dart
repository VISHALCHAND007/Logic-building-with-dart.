import 'dart:math';

void main() {
  /*

Question 1: Check whether a number is a Kaprekar Number

A Kaprekar Number is a non-negative number whose square can be split into 
two parts such that their sum equals the original number. The right part must
contain the same number of digits as the original number.

Examples:
- 45 → true (45² = 2025, 20 + 25 = 45)
- 9 → true (9² = 81, 8 + 1 = 9)
- 297 → true (297² = 88209, 88 + 209 = 297)
- 10 → false (100, 1 + 00 = 1)

*/
  // print(isKaprekarNum(10));

  /*

Question 2: Check whether a number is a Pronic Number

A Pronic Number is a number that is the product of two consecutive integers.

Examples:
- 12 → true (3 × 4)
- 20 → true (4 × 5)
- 42 → true (6 × 7)
- 15 → false
- 0 → true (0 × 1)

  */
  print(isPronicNum(0));
}

bool isKaprekarNum(int num) {
  //since kaprekar is non negative number
  if (num < 0) return false;

  final square = getSquare(num);

  final sumOfHalves = extractAndReturnSum(square, getNumOfDigits(num));

  return num == sumOfHalves;
}

int getSquare(int num) => num * num;

int getNumOfDigits(int num) {
  if (num == 0) return 1;

  int result = 0;
  while (num > 0) {
    result++;

    num ~/= 10;
  }
  return result;
}

int extractAndReturnSum(int num, int digitsToBeExtractedFromRight) {
  // int totalDigitsInSq = getNumOfDigits(num);
  // int firstPartDigits = totalDigitsInSq - digitsToBeExtractedFromRight;

  // int lDivisor = pow(10, firstPartDigits).toInt();
  int rDivisor = pow(10, digitsToBeExtractedFromRight).toInt();

  int firstPart = num ~/ rDivisor;
  int secondPart = num % rDivisor;
  // its a hit and run, please explain why always dividing with the large divisor gives the
  // correct output

  return firstPart + secondPart;
}

bool isPronicNum(int num) {
  if (num < 0) return false;

  for (int i = 0; i * (i + 1) <= num; i++) {
    if (i * (i + 1) == num) {
      return true;
    }
  }

  return false;
}
