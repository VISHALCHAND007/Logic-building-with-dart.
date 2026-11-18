import 'day20.dart';
import 'dart:math';

void main() {
  /*

Question 1: Circular Prime

A number is circular prime if every rotation of its digits is prime.

Examples:
- 197 → true (197, 971, 719 are prime)
- 11 → true (11, 11)
- 23 → false (32 is not prime)
- 2 → true

  */
  print(isCircularPrime(2));

  /*

Question 2: Abundant Number

A number is abundant if the sum of its proper divisors is greater than the number itself.

Examples:
- 12 → true (1 + 2 + 3 + 4 + 6 = 16)
- 18 → true (1 + 2 + 3 + 6 + 9 = 21)
- 28 → false (sum = 28)
- 15 → false (sum = 9)

  */

  // print(isAbundantNum(15));
}

bool isCircularPrime(int num) {
  if (num <= 1) return false;

  int digits = getDigits(num);
  int mulPower = 0;

  //since the number of digits will be equal to the number of circular pairs possible
  for (int i = digits; i >= 1; i--) {
    final power = pow(10, i).toInt();

    final numPattern = num % power;
    final remainingDigits = num ~/ power;

    final numberFormed =
        numPattern * pow(10, mulPower).toInt() + remainingDigits;
    if (!isPrime(numberFormed)) return false;
    mulPower++;
  }

  return true;
}

bool isPrime(int num) {
  if (num <= 1) return false;
  for (int i = 2; i * i <= num; i++) {
    if (num % i == 0) return false;
  }
  return true;
}

bool isAbundantNum(int num) {
  if (num <= 1) return false;

  int result = 1;

  for (int i = 2; i <= num ~/ 2; i++) {
    if (num % i == 0) {
      result += i;
    }
  }

  return result > num;
}
