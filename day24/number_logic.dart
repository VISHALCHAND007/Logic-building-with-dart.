import 'dart:math';

void main() {
  /*

Question 1: Check whether a number is a Twisted Prime Number

A Twisted Prime Number is a number that is prime, and its reverse is also prime.

Examples:
- 13 → true (13 and 31 are prime)
- 17 → true (17 and 71 are prime)
- 23 → false (reverse is 32, which is not prime)
- 11 → true
- 10 → false

  */
  // print(isTwistedPrime(10));

  /*

Question 2: Check whether a number is a Trimorphic Number

A Trimorphic Number is a number whose cube ends with the number itself.

Examples:
- 4 → true (4³ = 64)
- 5 → true (5³ = 125)
- 24 → true (24³ = 13824)
- 10 → false (10³ = 1000)
- 7 → false (7³ = 343)

  */

  print(isTriMorphicNum(10));
}

bool isTwistedPrime(int num) {
  if (num < 0) return false;

  final reversedNum = reverse(num);

  return isPrime(num) && isPrime(reversedNum);
}

int reverse(int num) {
  int rev = 0;
  while (num > 0) {
    final lastDigit = num % 10;
    num ~/= 10;

    rev = rev * 10 + lastDigit;
  }
  return rev;
}

bool isPrime(int num) {
  if (num <= 1) return false;
  for (int i = 2; i * i <= num; i++) {
    if (num % i == 0) return false;
  }

  return true;
}

bool isTriMorphicNum(int num) {
  final cube = pow(num, 3).toInt();

  final divisor = pow(10, getNumOfDigits(num)).toInt();

  final lastDigitsOfCube = cube % divisor;

  return num == lastDigitsOfCube;
}

int getNumOfDigits(int num) {
  if (num == 0) return 1;

  int digits = 0;

  while (num > 0) {
    digits++;
    num ~/= 10;
  }
  return digits;
}
