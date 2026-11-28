import 'dart:ffi';
import 'dart:math';
import 'dart:vmservice_io';

import '../2. Loops & Number Logic/day31.dart';

void main() {
  /*

Question 1: Sort an array of 0s, 1s, and 2s
Given an array containing only 0, 1, and 2, sort it in ascending order without using a built-in sorting function.

Examples:
- [0, 2, 1, 2, 0] → [0, 0, 1, 2, 2]
- [2, 0, 1] → [0, 1, 2]
- [0, 0, 0] → [0, 0, 0]
- [1, 2, 1, 0, 2] → [0, 1, 1, 2, 2]

  */
  // print(sortArray(unsortedArr: [1, 2, 1, 0, 2]));

  /*

Question 2: Find the subarray with the maximum sum
Given an integer array, find the maximum sum of a contiguous subarray.

Examples:
- [-2, 1, -3, 4, -1, 2, 1, -5, 4] → 6 (subarray [4, -1, 2, 1])
- [1, 2, 3, 4] → 10
- [-5, -2, -8] → -2
- [5] → 5
  
  */
  print(maxSumOfArray(arr: [5]));
}

List<int> sortArray({required List<int> unsortedArr}) {
  if (unsortedArr.isEmpty || unsortedArr.length == 1) return unsortedArr;

  for (int i = 0; i < unsortedArr.length; i++) {
    for (int j = i; j < unsortedArr.length; j++) {
      if (unsortedArr[i] > unsortedArr[j]) {
        int temp = unsortedArr[i];
        unsortedArr[i] = unsortedArr[j];
        unsortedArr[j] = temp;
      }
    }
  }

  return unsortedArr;
}

int maxSumOfArray({required List<int> arr}) {
  if (arr.isEmpty) return 0;
  int maxSum = minInt64;

  for (int i = 0; i < arr.length; i++) {
    int sum = 0;
    for (int j = i; j < arr.length; j++) {
      sum += arr[j];
      maxSum = max(sum, maxSum);
    }
  }

  return maxSum;
}
