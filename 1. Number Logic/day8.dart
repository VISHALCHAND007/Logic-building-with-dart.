// import 'dart:io';

void main() {
  /*

  Question 1: Even or odd

Write a Dart function that checks whether an integer is even or odd.

Examples:
- Input: 8 → Output: Even
- Input: 13 → Output: Odd
- Input: 0 → Output: Even


  */
  // print(isEven(2));
  // print(isEven(1));
  // print(isEven(6));

  /*

  Question 2: Count the digits

Write a Dart function that counts the number of digits in a positive
integer without converting it to a string.

Examples:
- Input: 5824 → Output: 4
- Input: 7 → Output: 1
- Input: 10000 → Output: 5

  */
  print(getNumOfDigits(7));
}

bool isEven(int num) {
  return num % 2 == 0;
}

int getNumOfDigits(int num) {
  int count = 0;

  if (num == 0) return 1;

  while (num > 0) {
    num = (num / 10).toInt();
    count++;
  }
  return count;
}
