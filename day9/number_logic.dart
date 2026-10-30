void main() {
  //1.
  /*

Question 1: Sum of digits
Write a Dart function that returns the sum of all digits in a positive integer, 
without converting it to a string.

Examples:
- Input: 5824 → Output: 19
- Input: 731 → Output: 11
- Input: 10000 → Output: 1

  */
  // print('Sum : ${getTheSumOfDigits(-0908)}');

  //2.
  /*

Question 2: Reverse a number
Write a Dart function that reverses the digits of a positive integer without
converting it to a string.

Examples:
- Input: 5824 → Output: 4285
- Input: 731 → Output: 137
- Input: 1200 → Output: 21

  */
  print(reverse(1200));
}

int getTheSumOfDigits(int num) {
  int result = 0;
  if (num < 0) return 0;

  while (num > 0) {
    final lastDigit = num % 10;
    num = num ~/ 10;
    result += lastDigit;
  }

  return result;
}

int reverse(int num) {
  int result = 0;
  if (num < 0) return -1;

  while (num > 0) {
    final lastDigit = num % 10;
    num = num ~/ 10;
    result = result * 10 + lastDigit;
  }
  return result;
}
