import '../day23/number_logic.dart';

void main() {
  /*

Question 1: Check whether a number is an Emirp Number

An Emirp Number is a prime number whose reverse is also a prime number, and the reversed number must 
be different from the original number.

Examples:
- 13 → true (13 and 31 are prime)
- 17 → true (17 and 71 are prime)
- 11 → false (reverse is the same number)
- 23 → false (32 is not prime)
- 31 → true (31 and 13 are prime)

  */

  // print(isEmirpNum(31));

  /*

Question 2: Check whether a number is a Sphenic Number

A Sphenic Number is a number that is the product of exactly three distinct prime numbers.

Examples:
- 30 → true (2 × 3 × 5)
- 42 → true (2 × 3 × 7)
- 66 → true (2 × 3 × 11)
- 60 → false (2² × 3 × 5; one prime factor is repeated)
- 12 → false (2² × 3; only two distinct prime factors)

  */

  print(isSphenicNum(12));
}

bool isEmirpNum(int num) {
  if (num <= 0) return false;

  if (!isPrime(num)) return false;

  final reversed = reverse(num);

  return isPrime(reversed) && num != reversed;
}

bool isSphenicNum(int num) {
  if (num <= 1) return false;

  int distinctPrimeFactors = 0;

  for (int i = 2; i * i <= num; i++) {
    if (num % i == 0) {
      distinctPrimeFactors++;
      num ~/= i;
    }
    if (num % i == 0)
      return false; // if number is still divisible by same factor then it's false
  }
  if (num > 1) {
    distinctPrimeFactors++;
  }

  return distinctPrimeFactors == 3;
}
