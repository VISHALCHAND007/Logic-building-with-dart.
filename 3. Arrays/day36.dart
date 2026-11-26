void main() {
  /*

Question 1: Find the leaders in an array
An element is called a leader if it is greater than or equal to every element to its right.

The rightmost element is always a leader.

Examples:
- [16, 17, 4, 3, 5, 2] → [17, 5, 2]
- [1, 2, 3, 4, 5] → [5]
- [5, 5, 4, 3] → [5, 5, 4, 3]
- [7] → [7]
Return the leaders in their original order.

  */
  // print(findLeaders(mList: []));

  /*
  
  Question 2: Find the equilibrium index
An index is an equilibrium index if the sum of elements strictly to its left equals the sum of elements strictly to its
right.

Examples:
- [1, 3, 5, 2, 2] → 2
- [1, 2, 3] → -1
- [0, 0, 0] → 0
- [2, 4, 1, 3, 5, 2] → 3
Return the first equilibrium index, or -1 if none exists.

  */
  print(findEquilibriumInd(mList: [2, 4, 1, 3, 5, 2]));
}

List<int> findLeaders({required List<int> mList}) {
  if (mList.isEmpty) return mList;

  final resultList = <int>[];

  for (int i = 0; i < mList.length; i++) {
    bool isLeader = true;
    for (int j = i; j < mList.length; j++) {
      if (mList[i] < mList[j]) {
        isLeader = false;
        break;
      }
    }
    if (isLeader) resultList.add(mList[i]);
  }

  return resultList;
}

int findEquilibriumInd({required List<int> mList}) {
  if (mList.isEmpty) return -1;
  int rightSum = 0, leftSum = 0;

  for (int i = 0; i < mList.length; i++) {
    //calculating the sum of two sides
    if (i > 0) {
      rightSum = getSumTo(mList: mList, toInd: i);
    }
    leftSum = getSumFrom(mList: mList, startInd: i + 1);

    if (rightSum == leftSum) {
      return i;
    }
  }

  return -1;
}

int getSumFrom({required List<int> mList, required int startInd}) {
  int sum = 0;

  for (int i = startInd; i < mList.length; i++) {
    sum += mList[i];
  }
  return sum;
}

int getSumTo({required List<int> mList, required int toInd}) {
  int sum = 0;
  for (int i = 0; i < toInd; i++) {
    sum += mList[i];
  }
  return sum;
}
