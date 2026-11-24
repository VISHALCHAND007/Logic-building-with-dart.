void main() {
  /*

Question 1: Find the frequency of each element

Given an integer array, count how many times each distinct element occurs.

Examples:
- [1, 2, 2, 3, 1, 1] → {1: 3, 2: 2, 3: 1}
- [5, 5, 5] → {5: 3}
- [1, 2, 3] → {1: 1, 2: 1, 3: 1}

  */
  // print(getFrequencyOfEachElement(mList: []));

  /*

Question 2: Find the intersection of two arrays

Return the elements that appear in both arrays, without duplicates.

Examples:
- [1, 2, 2, 3, 4] and [2, 3, 3, 5] → [2, 3]
- [1, 2, 3] and [4, 5, 6] → []
- [5, 5, 6, 7] and [5, 6, 6] → [5, 6]

  */
  print(getIntersectionOfArray(mList1: [5, 5, 6, 7], mList2: [5, 6, 6]));
}

Map<int, int> getFrequencyOfEachElement({required List<int> mList}) {
  Map<int, int> resultMap = {};

  if (mList.isEmpty) return resultMap;

  for (int i = 0; i < mList.length; i++) {
    final key = mList[i];

    if (resultMap.containsKey(key)) {
      final value = resultMap[key]!;
      resultMap[key] = value + 1;
    } else {
      resultMap[key] = 1;
    }
  }
  return resultMap;
}

List<int> getIntersectionOfArray({
  required List<int> mList1,
  required List<int> mList2,
}) {
  List<int> result = [];

  for (int i = 0; i < mList1.length; i++) {
    final element = mList1[i];
    if (mList2.contains(element) && !result.contains(element)) {
      result.add(element);
    }
  }
  return result;
}
