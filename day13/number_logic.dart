void main() {
  //1.

  /*

Question 1: Find GCD (Greatest Common Divisor)
Write a Dart function that finds the GCD of two positive integers.

Examples:
- (12, 18) → 6
- (24, 36) → 12
- (7, 13) → 1
- (15, 5) → 5

  */
  // print(findGCD(24, 36));

  //2.

  /*

Question 2: Find LCM (Least Common Multiple)
Write a Dart function that finds the LCM of two positive integers.

Examples:
- (12, 18) → 36
- (4, 6) → 12
- (5, 7) → 35
- (8, 12) → 24
  
  */
  print(findLCM(12, 18));
}

int findGCD(int num1, int num2) {
  int counter = 1;
  int gcd = 1;

  while (counter != num1 + 1 && counter != num2 + 1) {
    //running till +1 since the gcd can be number itself
    if (num1 % counter == 0 && num2 % counter == 0) {
      gcd = counter;
    }
    counter++;
  }

  return gcd;
}

int findLCM(int num1, int num2) {
  return (num1 * num2) ~/ findGCD(num1, num2);
}
