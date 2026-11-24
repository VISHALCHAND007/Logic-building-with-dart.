void main() {
  /*

Question 1: Find the union of two arrays

Return all distinct elements present in either array.

Examples:
- [1, 2, 2, 3] and [2, 3, 4, 4] → [1, 2, 3, 4]
- [5, 5, 6] and [6, 7, 7] → [5, 6, 7]
- [1, 2] and [3, 4] → [1, 2, 3, 4]

  */
  // print(findUnionOfArray(mList1: [5, 5, 6], mList2: [6, 7, 7]));

  /*

Question 2: Find the element that appears only once

Given an array where every element appears exactly twice except one element, find that unique element.

Examples:
- [2, 3, 5, 4, 5, 3, 4] → 2
- [7, 1, 7, 2, 2] → 1
- [9] → 9

  */
  // print(findUniqueElement(mList: [2, 3, 5, 4, 5, 3, 4]));
  // print(findUniqueElement(mList: [7, 1, 7, 2, 2]));
  print(findUniqueElement(mList: []));
}

List<int> findUnionOfArray({
  required List<int> mList1,
  required List<int> mList2,
}) {
  if (mList1.isEmpty && mList2.isEmpty) return [];

  final result = <int>[];
  final list = <int>[];
  list.addAll(mList1);
  list.addAll(mList2);

  for (int i = 0; i < list.length; i++) {
    final element = list[i];
    if (!result.contains(element)) {
      result.add(element);
    }
  }
  return result;
}

int findUniqueElement({required List<int> mList}) {
  if (mList.isEmpty) return -1;

  Map<int, int> countTracker = {};
  for (int i = 0; i < mList.length; i++) {
    final key = mList[i];
    countTracker[key] = (countTracker[key] ?? 0) + 1;
  }

  return countTracker.keys.firstWhere(
    (key) => countTracker[key] == 1,
    orElse: () => -1,
  );
}
