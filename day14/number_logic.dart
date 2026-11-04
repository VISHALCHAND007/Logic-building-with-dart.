void main() {
  /*
Question 1: Count the number of factors

Write a function that returns the total number of factors of a positive integer.

Examples:
- 12 → 6
- 7 → 2
- 16 → 5
- 1 → 1


*/
  // print(getTotalFactors(1));

  /*
Question 2: Check whether a number is a perfect number

A perfect number is a number whose sum of proper divisors 
(all positive divisors excluding the number itself) equals the number.

Examples:
- 6 → true (1 + 2 + 3 = 6)
- 28 → true (1 + 2 + 4 + 7 + 14 = 28)
- 12 → false
- 10 → false
  */

  print(isNumberPerfect(10));
}

List<int> getFactors(int n) {
  List<int> factors = [];

  if (n <= 0) return factors;

  for (int i = 1; i <= n / 2; i++) {
    if (n % i == 0) {
      factors.add(i);
    }
  }

  // number itself is also a factor
  factors.add(n);

  return factors;
}

int getTotalFactors(int n) {
  return getFactors(n).length;
}

bool isNumberPerfect(int n) {
  if (n <= 0) return false;
  //a number is perfect is the sum of its factors is equal to the number itself
  final factors = getFactors(n);
  int sumOfFactors = 0;
  for (int i = 0; i < factors.length - 1; i++) {
    sumOfFactors += factors[i];
  }
  return sumOfFactors == n;
}
