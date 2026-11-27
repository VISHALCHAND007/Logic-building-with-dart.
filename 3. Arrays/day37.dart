void main() {
  /*

Question 1: Find the longest consecutive sequence
Given an unsorted array of integers, find the length of the longest sequence of consecutive integers.

Examples:
- [100, 4, 200, 1, 3, 2] → 4 (sequence: 1, 2, 3, 4)
- [1, 9, 3, 10, 4, 20, 2] → 4
- [5, 5, 5] → 1
- [ ] → 0

  */
  // print(findLongestConsecutiveSeq(mList: [1, 2, 2, 3, 4]));

  /*

Question 2: Merge two sorted arrays
Given two arrays sorted in ascending order, merge them into one sorted array.

Examples:
- [1, 3, 5] and [2, 4, 6] → [1, 2, 3, 4, 5, 6]
- [1, 2, 2] and [2, 3, 4] → [1, 2, 2, 2, 3, 4]
- [ ] and [1, 2] → [1, 2]
- [1, 5, 9] and [2, 3] → [1, 2, 3, 5, 9]

  */
  print(mergeTwoSortedArr(mList1: [], mList2: [1, 2]));
}

int findLongestConsecutiveSeq({required List<int> mList}) {
  //unsorted list
  if (mList.isEmpty) return 0;

  mList.sort();
  int maxSequenceLength = 0,
      sequenceLength = 1; //starting point of the sequence

  for (int i = 0; i < mList.length - 1; i++) {
    if (mList[i] == mList[i + 1]) continue;

    if (mList[i] + 1 == mList[i + 1]) {
      sequenceLength++;
    } else {
      if (maxSequenceLength < sequenceLength) {
        maxSequenceLength = sequenceLength;
      }
      sequenceLength = 1; //reset to starting point
    }
  }
  if (maxSequenceLength < sequenceLength) {
    maxSequenceLength = sequenceLength;
  }

  return maxSequenceLength;
}

List<int> mergeTwoSortedArr({
  required List<int> mList1,
  required List<int> mList2,
}) {
  final list = <int>[];

  int i = 0, j = 0;

  while (i < mList1.length && j < mList2.length) {
    if (mList1[i] <= mList2[j]) {
      list.add(mList1[i]);
      i++;
    } else {
      list.add(mList2[j]);
      j++;
    }
  }

  while (i < mList1.length) {
    list.add(mList1[i]);
    i++;
  }

  while (j < mList2.length) {
    list.add(mList2[j]);
    j++;
  }

  return list;
}
