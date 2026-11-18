void main() {
  /*

Question 1: Count numbers with a specific property

Given an integer n, count how many numbers from 1 to n are divisible by either 3 or 5, but not both.

Examples:
- n = 10 → 5 (3, 5, 6, 9, 10)
- n = 20 → 8 (3, 5, 6, 9, 10, 12, 18, 20)
- n = 5 → 2 (3, 5)
- n = 2 → 0

  */
  // print(checkDivisiblility(2));

  /*

Question 2: Find the integer square root

Given a non-negative integer n, find the largest integer x such that:

x^2 <= n


Do not use sqrt() or pow().

Examples:
- n = 25 → 5
- n = 26 → 5
- n = 80 → 8
- n = 100 → 10
- n = 0 → 0

  */
  print(findLargestSqRt(0));
}

int checkDivisiblility(int num) {
  if (num <= 2) return 0; // since 3 will the first divisible by three

  int result = 0;

  for (int i = 3; i <= num; i++) {
    if (i % 3 == 0 && i % 5 != 0) result++;

    if (i % 3 != 0 && i % 5 == 0) result++;
  }

  return result;
}

int findLargestSqRt(int num) {
  // no need to handle the edge case for -ve numbers, question say we will receive only +ve integers

  int result = 0;

  for (int i = 1; i * i <= num; i++) {
    result = i;
  }

  return result;
}
