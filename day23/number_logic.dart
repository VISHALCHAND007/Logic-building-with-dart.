void main() {
  /*

Question 1: Check whether a number is an Adam Number

A number is an Adam Number if the reverse of its square equals the square of its reverse.

Examples:
- 12 → true (12² = 144, reverse = 441; reverse of 12 = 21, 21² = 441)
- 13 → true (13² = 169, reverse = 961; 31² = 961)
- 14 → false (14² = 196, reverse = 691; 41² = 1681)

  */

  // print(isAdamNum(14));

  /*

Question 2: Check whether a number is a Smith Number

A Smith Number is a composite number whose digit sum equals the sum of the digits of all its 
prime factors, including repeated factors.

Examples:
- 4 → true (4 = 2 × 2; digit sum = 4, factor digit sum = 2 + 2 = 4)
- 22 → true (22 = 2 × 11; digit sum = 4, factor digit sum = 2 + 1 + 1 = 4)
- 27 → true (27 = 3 × 3 × 3; both sums = 9)
- 13 → false (prime numbers are not Smith Numbers)
- 58 → true (58 = 2 × 29; both sums = 13)

  
  */
  print(isSmithNum(58));
}

bool isAdamNum(int num) {
  if (num < 0) return false;

  return reverse(getSquare(num)) == getSquare(reverse(num));
}

int getSquare(int num) => num * num;

int reverse(int num) {
  int result = 0;
  while (num > 0) {
    final lastDigit = num % 10;
    num ~/= 10;

    result = result * 10 + lastDigit;
  }
  return result;
}

bool isSmithNum(int num) {
  if (num <= 1 || isPrime(num)) return false;

  final digitSum = getDigitSum(num);

  final primeFactors = getPrimeFactors(num);

  int factorDigitSum = 0;

  for (final factor in primeFactors) {
    factorDigitSum += getDigitSum(factor);
  }

  return digitSum == factorDigitSum;
}

int getDigitSum(int num) {
  int result = 0;
  while (num > 0) {
    int lastDigit = num % 10;
    num ~/= 10;

    result += lastDigit;
  }
  return result;
}

List<int> getPrimeFactors(int num) {
  final List<int> factors = [];
  int remaining = num;

  for (int i = 2; i <= remaining; i++) {
    while (remaining % i == 0) {
      factors.add(i);
      remaining ~/= i;
    }
  }
  if (remaining > 1) {
    factors.add(remaining);
  }

  return factors;
}

bool isPrime(int num) {
  if (num <= 1) return false;

  for (int i = 2; i * i <= num; i++) {
    if (num % i == 0) {
      return false;
    }
  }

  return true;
}
