void main() {
  /*

Question 1: Find the first repeating element

Given a list of integers, find the first element whose value appears more than once. Return the element based on its first occurrence in the list.

Examples:
- [10, 5, 3, 4, 3, 5, 6] → 5
- [1, 2, 3, 4] → -1
- [7, 8, 7, 8] → 7
- [4, 4, 2, 2] → 4

  */
  // print(findFirstRepetition(mList: [4, 4, 2, 2]));

  /*

Question 2: Rotate an array to the right by K positions

Given an array and an integer k, rotate the elements to the right by k positions.

Examples:
- [1, 2, 3, 4, 5], k = 2 → [4, 5, 1, 2, 3]
- [10, 20, 30], k = 1 → [30, 10, 20]
- [1, 2, 3], k = 3 → [1, 2, 3]
- [1, 2, 3], k = 4 → [3, 1, 2]

  */
  print(rotateArrayToRight(mList: [1, 2, 3], k: 4));
}

int findFirstRepetition({required List<int> mList}) {
  for (int i = 0; i < mList.length; i++) {
    for (int j = i + 1; j < mList.length; j++) {
      if (mList[i] == mList[j]) {
        return mList[i];
      }
    }
  }
  return -1;
}

List<int> rotateArrayToRight({required List<int> mList, required int k}) {
  if (mList.isEmpty || k <=0) return mList;

  k = k % mList.length;

  // int lastElement = mList.last;
  for (int rep = 1; rep <= k; rep++) {
    for (int i = mList.length - 1; i > 0; i--) {
      final temp = mList[i];
      mList[i] = mList[i - 1];
      mList[i - 1] = temp;
    }
  }

  return mList;
}
