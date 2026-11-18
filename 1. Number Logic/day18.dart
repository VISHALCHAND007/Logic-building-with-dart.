void main() {
  /*

Day 18 — Number Logic
Question 1: Check whether a number is a Harshad Number
A Harshad Number is divisible by the sum of its digits.

Examples:
- 18 → true (18 ÷ 9 = 2)
- 21 → true (21 ÷ 3 = 7)
- 12 → true (12 ÷ 3 = 4)
- 19 → false (19 ÷ 10 is not an integer)
- 1729 → true (1729 ÷ 19 = 91)


*/

  // print(isHarshadNum(1729));

  /*
Question 2: Check whether a number is a Happy Number
A Happy Number is a number that eventually becomes 1 when repeatedly replacing it with the sum of 
the squares of its digits.

Examples:
- 19 → true
- 7 → true
- 10 → true
- 2 → false
- 20 → false

  */

  print(isHappyNum(20));
}

bool isHarshadNum(int num) {
  if (num <= 0) return false; // since 0/0 is infinite

  int tempNum = num;
  int sum = 0;

  while (tempNum > 0) {
    final lastDigit = tempNum % 10;
    tempNum ~/= 10;

    sum += lastDigit;
  }
  return num % sum == 0;
}

// bool isHappyNum(int num) {
//   if (num < 0) return false;

//   List<int> sumArr = [];
//   int sum = 0, tempNum = num;
//   while (!sumArr.contains(sum) && sum != 1) {
//     if (tempNum != num) {
//       //after initialization it will be updated from 2nd time onwards to reset the values
//       sumArr.add(sum);
//       tempNum = sum;
//       sum = 0;
//     }
//     final digitsInNum = getDigits(tempNum);
//     for (int i = 1; i <= digitsInNum; i++) {
//       final lastDigit = tempNum % 10;
//       sum += getSquare(lastDigit);
//       tempNum ~/= 10;
//     }
//   }

//   return sum == 1;
// }

bool isHappyNum(int num) {
  List<int> visited = [];

  while (num != 1 && !visited.contains(num)) {
    visited.add(num);

    num = getSumOfSquareOfDigits(num);
  }

  return num == 1;
}

int getSumOfSquareOfDigits(int num) {
  int sum = 0;

  while (num > 0) {
    final lastDigit = num % 10;
    num ~/= 10;
    sum += getSquare(lastDigit);
  }
  return sum;
}

int getSquare(int num) {
  return num * num;
}

int getDigits(int num) {
  int digit = 0;

  while (num > 0) {
    digit++;
    num ~/= 10;
  }
  return digit;
}
