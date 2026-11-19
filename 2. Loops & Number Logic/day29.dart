import '../1. Number Logic/day16.dart';

void main() {
  /*

Question 1: Find the GCD of all numbers from 1 to N?

Given an integer n, find the GCD of all integers from 1 through n.

Examples:
- n = 1 → 1
- n = 2 → 1
- n = 5 → 1
- n = 10 → 1

*/
  // I think the answer for GCD from 1 to n will always be 1 no matter what. Let's verify it
  // print(getGCDInRange(19));

  /*

Question 2: Find the maximum sum of consecutive digits

Given a positive integer num and an integer k, find the maximum sum of any k consecutive digits.

Examples:
- num = 123456, k = 2 → 11 (5 + 6)
- num = 12345, k = 3 → 12 (3 + 4 + 5)
- num = 98765, k = 2 → 17 (9 + 8)
- num = 123, k = 1 → 3

  */
  print(maxSumOfConsecutiveDigits(123456, 2));
}

int getGCDInRange(int endNum) {
  if (endNum <= 0) return -1;

  if (endNum == 1) return 1;

  final numList = storeAllDigits(endNum);
  int gcd = 0;

  for (int i = 1; i <= endNum; i++) {
    bool isDivisor = true;
    for (int j = 0; j < numList.length; j++) {
      if (numList[j] % i != 0) {
        isDivisor = false;
        break;
      }
      ;
    }
    if (isDivisor) gcd = i;
  }

  return gcd;
}

List<int> storeAllDigits(int num) {
  final result = <int>[];
  for (int i = 1; i <= num; i++) {
    result.add(i);
  }
  return result;
}

int maxSumOfConsecutiveDigits(int num, int digits) {
  if (num < 0 || digits <= 0) return -1;

  int sum = 0;
  int tempNum = num;
  // while (num > 0) {
  while (getNumOfDigits(num) >= digits) {
    int calculatedSum = 0;
    for (int i = 0; i < digits; i++) {
      final lastDigit = tempNum % 10;
      tempNum ~/= 10;

      calculatedSum += lastDigit;
    }
    print(calculatedSum);
    if (calculatedSum > sum) sum = calculatedSum;
    num ~/= 10;
    tempNum = num;
  }

  return sum;
}
