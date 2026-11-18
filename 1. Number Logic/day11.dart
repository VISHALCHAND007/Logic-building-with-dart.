void main() {
  // 1.

  /*

Question 1: Check whether a number is prime
Write a Dart function that checks whether a given positive integer is prime.

Examples:
- 7 → true
- 13 → true
- 10 → false
- 1 → false
- 2 → true

  */

  // print(isPrime(1));

  // 2.

  /*

Question 2: Find all factors of a number
Write a Dart function that returns all factors of a given positive integer in ascending order.

Examples:
- 12 → [1, 2, 3, 4, 6, 12]
- 15 → [1, 3, 5, 15]
- 7 → [1, 7]
- 1 → [1]

  */

  print(getAllFactors(1));
}

bool isPrime(int num) {
  //since question say we will get positive integer
  if (num <= 1) return false;

  //we know that if the number has only two factors 1 and num itself then its prime.
  bool isNumPrime = true;
  for (int i = 2; i <= num ~/ 2; i++) {
    if (num % i == 0) {
      isNumPrime = false;
    }
  }
  return isNumPrime;
}

List<int> getAllFactors(int num) {
  List<int> resultList = [];

  //since we will always get a positive integer hence
  if (num <= 0) return resultList; // we will return a empty list in that case

  for (int i = 1; i <= num ~/ 2; i++) {
    if (num % i == 0) {
      //if its perfectly divisible by a number then the number is a factor
      resultList.add(i);
    }
  }
  //since we are not looping till end, thus we will add the number itself at the end
  resultList.add(num);

  return resultList;
}
