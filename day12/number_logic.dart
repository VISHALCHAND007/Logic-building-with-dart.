void main() {
  //1.

  /*
  
  Question 1: Calculate factorial
Write a Dart function that calculates the factorial of a non-negative integer.

Examples:
- 5 → 120
- 4 → 24
- 3 → 6
- 1 → 1
- 0 → 1
  
  */

  //solution 1:
  // print(getFactorial(5));

  //2.

  /*
  
  Question 2: Generate Fibonacci series
Write a Dart function that generates the first n numbers of the Fibonacci series.

Each number is the sum of the previous two numbers.

Examples:
- n = 1 → [0]
- n = 2 → [0, 1]
- n = 5 → [0, 1, 1, 2, 3]
- n = 8 → [0, 1, 1, 2, 3, 5, 8, 13]
  
  */

  //solution 2:
  print(getFibonacciTill(8));
}

int getFactorial(int num) {
  if (num <= 0) return 1;

  int factorial = 1;
  while (num > 0) {
    factorial *= num;
    num--;
  }
  return factorial;
}

List<int> getFibonacciTill(int n) {
  List<int> result = [];
  if (n < 0) return result;

  for (int i = 0; i < n; i++) {
    if (i == 0) {
      result.add(0);
    } else if (i == 1) {
      result.add(1);
    } else {
      //normal series formation will work for other iterations
      final nextInt = result[i - 2] + result[i - 1];
      result.add(nextInt);
    }
  }
  return result;
}
