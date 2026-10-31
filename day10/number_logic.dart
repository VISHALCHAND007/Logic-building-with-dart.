void main() {
  //1. Question 1: Check whether a number is a palindrome

  /*

A palindrome number reads the same forward and backward.

Examples:
- 121 → true
- 12321 → true
- 123 → false
- 10 → false

  */

  // print(isPalindrome(10));

  //2.

  /*

Question 2: Find the largest digit in a number
Write a function that returns the largest digit present in a positive integer.

Examples:
- 5824 → 8
- 731 → 7
- 999 → 9
- 1045 → 5

  */

  print(getLargestDigit(1045));
}

bool isPalindrome(int num) {
  if (num < 0) return false;

  if (num > 0 && num < 10)
    return true; //since single digit will remain same after
  //reverval as well
  int reversedNum = 0;
  int tempNum = num; // as well need original no. for comparison now

  while (tempNum > 0) {
    final lastDigit = tempNum % 10;
    tempNum = tempNum ~/ 10; //removing the last digit

    reversedNum = reversedNum * 10 + lastDigit;
  }

  return reversedNum == num;
}

int getLargestDigit(int num) {
  if (num < 0) {
    //-ve number
    return 0;
  }

  if (num >= 0 && num < 10) {
    //means number is single digit
    return num;
  }
  int largestDigit = 0;
  while (num > 0) {
    final lastDigit = num % 10;
    num = num ~/ 10;

    //comparing the largest digit
    if (largestDigit < lastDigit) {
      largestDigit = lastDigit;
    }
  }
  return largestDigit;
}


///please don't include hints from now on, if its needed I'll ask