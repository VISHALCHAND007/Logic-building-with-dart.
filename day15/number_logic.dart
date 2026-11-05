import 'dart:math' as math;

void main() {
  /*
  
Question 1: Check whether a number is an Armstrong number
An Armstrong number is equal to the sum of its digits, each raised to the power 
of the number of digits.

Examples:
- 153 → true (1³ + 5³ + 3³ = 153)
- 370 → true
- 9474 → true
- 123 → false
- 5 → true


*/

  // print(isArmstrongNum(5));

  /*
Question 2: Find the second-largest digit in a number
Write a function that returns the second-largest distinct digit in a positive integer.

Examples:
- 5824 → 5
- 731 → 3
- 999 → No second-largest distinct digit
- 1224 → 2
- 98765 → 8
  
  */

  print(secondLargestNum(98768));
}

bool isArmstrongNum(int num) {
  if (num < 0) return false;
  int sum = 0, tempNum = num; //temp is required for comparison
  int power = getNumOfDigits(num);

  while (tempNum > 0) {
    final lastDigit = tempNum % 10;
    tempNum ~/= 10;
    sum += math.pow(lastDigit, power) as int;
  }

  return sum == num;
}

int getNumOfDigits(int num) {
  if (num == 0) return 1;

  int result = 0;

  while (num > 0) {
    result++;
    num ~/= 10;
  }
  return result;
}

int secondLargestNum(int num) {
  final numOfDigits = getNumOfDigits(num);
  if (num < 0 || numOfDigits < 2)
    return -1; //because we need atleast 2 digits to find a second largest digit

  int largest = 0, sLargest = 0;

  while (num > 0) {
    final lastDigit = num % 10;
    num ~/= 10;

    //comparison
    if (lastDigit > largest) {
      sLargest = largest;
      largest = lastDigit;
    }
    if (lastDigit > sLargest && lastDigit < largest) {
      sLargest = lastDigit;
    }
  }

  return sLargest;
}
