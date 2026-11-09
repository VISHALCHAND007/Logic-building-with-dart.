import 'dart:math';

void main() {
  /*

Question 1: Check whether a number is a Neon Number

A Neon Number is a number where the sum of the digits of its square equals the original number.

Examples:
- 9 → true (9² = 81, 8 + 1 = 9)
- 1 → true (1² = 1)
- 0 → true (0² = 0)
- 7 → false (7² = 49, 4 + 9 = 13)

*/
  // print(isNeonNumber(7));

  /*
Question 2: Check whether a number is a Spy Number

A Spy Number is a number where the sum of its digits equals the product of its digits.

Examples:
- 1124 → true (sum = 8, product = 8)
- 123 → false (sum = 6, product = 6? Check this carefully: 1 × 2 × 3 = 6, so it is actually true.)
- 22 → false (sum = 4, product = 4? Also true.)
Use these corrected examples:
- 1124 → true
- 1234 → false (sum = 10, product = 24)
- 22 → true
- 123 → true
- 1235 → false

  */

  print(isSpyNumber(1235));
}

bool isNeonNumber(int num) {
  if (num < 0) return false;

  final square = pow(num, 2).toInt();
  final digitSum = getDigitSum(square);

  return digitSum == num;
}

int getDigitSum(int num) {
  if (num < 0) return num;

  int result = 0;

  while (num > 0) {
    final lastDigit = num % 10;
    num ~/= 10;

    result += lastDigit;
  }

  return result;
}

bool isSpyNumber(int num) {
  if (num < 0) return false;

  final digitSum = getDigitSum(num);
  final productOfDigits = getProductOfDigits(num);

  return digitSum == productOfDigits;
}

int getProductOfDigits(int num) {
  if (num <= 0) return 0;

  int result = 1;

  while (num > 0) {
    final lastDigit = num % 10;
    num ~/= 10;

    result *= lastDigit;
  }
  return result;
}
