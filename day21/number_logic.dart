import 'dart:math';

void main() {
  /*

Question 1: Check whether a number is a Tech Number

A Tech Number is an even-digit number that can be divided into two equal halves. 
The sum of those halves, when squared, must equal the original number.

Examples:
- 2025 → true (20 + 25 = 45, \(45^2 = 2025\))
- 3025 → true (30 + 25 = 55, \(55^2 = 3025\))
- 9801 → true (98 + 01 = 99, \(99^2 = 9801\))
- 1234 → false  

  */

  print(isTechNum(1234));

  /*
  
  Question 2: Check whether a number is a Buzz Number

A Buzz Number is a number that is either divisible by 7 or ends in 7.

Examples:
- 7 → true
- 14 → true
- 27 → true
- 21 → true
- 23 → false
- 100 → false

  */

  // print(isBuzzNum(100));
}

bool isTechNum(int num) {
  if (num <= 0 || !canSqlitIntoTwoHalves(num)) return false;

  //getting the two halves :: 2025
  final sumOfHalves = getTheSumOfHalves(num);
  print(sumOfHalves);

  return num == pow(sumOfHalves, 2);
}

int getTheSumOfHalves(int num) {
  final digits = getNumOfDigits(num);
  final divisor = pow(10, digits ~/ 2).toInt();

  final firstHalf = num ~/ divisor;
  final secondHalf = num % divisor;

  return firstHalf + secondHalf;
}

bool canSqlitIntoTwoHalves(int num) {
  return getNumOfDigits(num) % 2 == 0;
}

int getNumOfDigits(int num) {
  int result = 0;
  while (num > 0) {
    result++;

    num ~/= 10;
  }
  return result;
}

bool isBuzzNum(int num) {
  if (num < 0) return false;

  return (num % 7 == 0) || getLastDigit(num) == 7;
}

int getLastDigit(int num) {
  return num % 10;
}
