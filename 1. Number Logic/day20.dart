import 'dart:math';

void main() {
  /*

Question 1: Check whether a number is a Disarium Number

A Disarium Number is a number where the sum of its digits raised to their respective positions 
equals the original number.

Examples:
- 135 → true (1¹ + 3² + 5³ = 135)
- 89 → true (8¹ + 9² = 89)
- 175 → true (1¹ + 7² + 5³ = 175)
- 123 → false

*/
  // print(isDisariumNum(175));

  /*
Question 2: Check whether a number is a Duck Number

A Duck Number is a positive number that contains at least one zero, but the zero must not be the
leading digit.

Examples:
- 1023 → true
- 405 → true
- 123 → false
- 100 → true
- 007 → false (as an integer, this is simply 7)

  */
  print(isDuckNum(1023));
}

bool isDisariumNum(int num) {
  if (num < 0) return false;

  if (num == 0) return true;

  int tempNum = num, result = 0;
  int power = getDigits(num);

  while (tempNum > 0) {
    final lastDigit = tempNum % 10;
    tempNum ~/= 10;

    result += pow(lastDigit, power).toInt();
    power--;
  }
  return result == num;
}

int getDigits(int num) {
  int count = 0;
  while (num > 0) {
    count++;
    num ~/= 10;
  }
  return count;
}

bool isDuckNum(int num) {
  bool result = false;

  while (num > 0) {
    final lastDigit = num % 10;
    num ~/= 10;

    if (lastDigit == 0) {
      result = true;
      break;
    }
  }
  return result;
}
