void main() {
  /*
  
Question 1: Find the second-smallest distinct digit
Write a function that returns the second-smallest distinct digit in a 
positive integer.

Examples:
- 5824 → 4
- 731 → 3
- 999 → No second-smallest distinct digit
- 1224 → 2
- 98765 → 6
- 100 → 1

*/
  // print(findSecondSmalledDigit(100));

  /*
Question 2: Calculate the product of digits
Write a function that returns the product of all digits in a positive integer.

Examples:
- 234 → 24
- 1234 → 24
- 105 → 0
- 7 → 7
- 999 → 729
  
   */

  print(getProductOfDigits(999));
}

int findSecondSmalledDigit(int num) {
  if (num < 0) return -1;
  if (getNumOfDigits(num) == 1) return -1;

  int smallest = 99,
      sSmallest = 99; //initialized with double because if not digit
  //is found and double digit 99 is returned then we can assume no sSmallest is found

  while (num > 0) {
    final lastDigit = num % 10;
    num ~/= 10;

    if (lastDigit < smallest) {
      sSmallest = smallest;
      smallest = lastDigit;
    }
    if (lastDigit < sSmallest && lastDigit > smallest) {
      sSmallest = lastDigit;
    }
  }

  return sSmallest;
}

int getNumOfDigits(int n) {
  int digits = 0;

  while (n > 0) {
    digits++;
    n ~/= 10;
  }
  return digits;
}

int getProductOfDigits(int num) {
  int result = 1;

  if (num < 0) return -1;
  if (getNumOfDigits(num) == 1) {
    return num; // covers all single digit cases including 0
  }

  while (num > 0) {
    final lastDigit = num % 10;
    num ~/= 10;

    result *= lastDigit;
  }
  return result;
}
