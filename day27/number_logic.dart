import '../day20/number_logic.dart';

void main() {
  /*

A Keith number is a number whose digits are used to generate a sequence by repeatedly adding the
previous digits. If the sequence eventually produces the original number, it is a Keith number.

Examples:
- 14 → true (1, 4, 5, 9, 14)
- 19 → true (1, 9, 10, 19)
- 197 → true (1, 9, 7, 17, 33, 57, 107, 197)
- 12 → false (1, 2, 3, 5, 8, 13) hence false 
# the number of digits to be added here will be equal to the number of digits in given number

  */
  // print(isKeithNum(12));

  /*

Question 2: Ugly Number

An ugly number is a positive number whose prime factors are limited to 2, 3, and 5.

Examples:
- 6 → true (2 × 3)
- 8 → true (2 × 2 × 2)
- 30 → true (2 × 3 × 5)
- 14 → false (2 × 7)
- 1 → true (no prime factors)

  */

  print(isUglyNum(7));
}

bool isKeithNum(int num) {
  if (num < 10) return false;

  //14
  int result = 0, digits = getDigits(num);
  final tracker = addDigitsToList(num, digits);

  while (result < num) {
    result = 0;
    int size = tracker.length - 1;
    for (int i = 0; i < digits; i++) {
      result += tracker[size];
      size--;
    }

    tracker.add(result);
  }

  return result == num;
}

List<int> addDigitsToList(int num, int digits) {
  List<int> tracker = [];
  while (digits > 0) {
    final lastDigit = num % 10;
    num ~/= 10;

    tracker.add(lastDigit);
    digits--;
  }
  return tracker.reversed.toList();
}

bool isUglyNum(int num) {
  if (num <= 0) return false;

  for (final factor in [2, 3, 5]) {
    if (num % factor == 0) {
      num ~/= 10;
    }
  }
  return num == 1;
}

bool isPrime(int num) {
  if (num <= 1) return false;

  for (int i = 2; i * i <= num; i++) {
    if (num % i == 0) return false;
  }
  return true;
}
