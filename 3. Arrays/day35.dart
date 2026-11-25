import '../2. Loops & Number Logic/day31.dart';

void main() {
  /*

Question 1: Find the majority element

An element is a majority element if it appears more than n / 2 times in an array.

Examples:
- [3, 3, 4, 2, 3, 3, 3] → 3
- [2, 2, 1, 1, 1, 2, 2] → 2
- [1, 2, 3, 4] → -1
- [5, 5, 5, 2, 2] → 5
Return -1 if no majority element exists.
  
  */
  // print(findMajorityElement(mList: [5, 5, 5, 2, 2]));

  /*

Question 2: Find the maximum difference between two elements

Given an array, find the maximum value of arr[j] - arr[i], where j > i.

Examples:
- [2, 3, 10, 6, 4, 8, 1] → 8 (10 - 2)
- [7, 9, 5, 6, 3, 2] → 2 (9 - 7)
- [10, 8, 6, 4] → -2 (4 - 6 is invalid because the 6 comes before 4; the best valid difference is 8 - 10 = -2)
- [1, 2, 3, 4] → 3
For this second question, the order of elements matters: you must buy or select the first element before selecting the second.

  */
  print(maxDifferenceBtwTwoInd(mList: [10, 1, 9, 2, 8]));
}

int findMajorityElement({required List<int> mList}) {
  if (mList.isEmpty) return -1;

  final majority = mList.length ~/ 2;
  Map<int, int> countMap = {};

  for (int i = 0; i < mList.length; i++) {
    final element = mList[i];
    countMap[element] = (countMap[element] ?? 0) + 1;
  }

  return countMap.keys.firstWhere(
    (key) => (countMap[key] ?? 0) > majority,
    orElse: () => -1,
  );
}

int maxDifferenceBtwTwoInd({required List<int> mList}) {
  int difference = minInt64;
  int j = -1, maxValue = minInt64;
  /*
  1. first find the index of max element, edge case will be that the element should not be at the index 0. 
  2. then subtract it with all the indexes below it, 
  3. return the max difference 
  */
  for (int i = 1; i < mList.length; i++) {
    if (mList[i] > maxValue) {
      maxValue = mList[i];
      j = i;
    }
  }

  for (int i = 0; i < j; i++) {
    final diff = mList[j] - mList[i];

    if (diff > difference) difference = diff;
  }

  return difference;
}
