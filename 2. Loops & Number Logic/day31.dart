const int maxInt64 = 9223372036854775807;
const int minInt64 = -9223372036854775808;

void main() {
  /*

Question 1: Find the second-largest distinct element

Given a list of integers, find the second-largest distinct element without sorting the list.

Examples:
- [10, 20, 30, 40] → 30
- [5, 5, 4, 3] → 4
- [10, 10, 10] → -1
- [1, 2] → 1
- [-5, -2, -10] → -5

  */
  try {
    // print(findSecondLargestElement(mList: [5, 5, 4, 3]));
    // print(findSecondLargestElement(mList: [-5, -2, -10]));
  } catch (e) {
    print(e.toString());
  }

  /*

Question 2: Move all zeros to the end

Given a list of integers, move all zeros to the end while maintaining the relative order of non-zero 
elements.

Examples:
- [0, 1, 0, 3, 12] → [1, 3, 12, 0, 0]
- [1, 2, 3] → [1, 2, 3]
- [0, 0, 0] → [0, 0, 0]
- [4, 0, 5, 0, 2] → [4, 5, 2, 0, 0]

  */
  print(shiftZeroesToEnd(mList: [4,0, 5, 0, 2]));
}

int findSecondLargestElement({required List<int> mList}) {
  if (mList.length <= 1) throw Exception('Insufficient Data');

  int largest = minInt64;
  int sLargest = minInt64;

  for (int i = 0; i < mList.length; i++) {
    if (mList[i] > largest) {
      sLargest = largest;
      largest = mList[i];
    }
    if (mList[i] < largest && mList[i] > sLargest) {
      sLargest = mList[i];
    }
  }

  return sLargest == minInt64 ? -1 : sLargest;
}

List<int> shiftZeroesToEnd({required List<int> mList}) {
  if (mList.length <= 1) return mList;

  for (int i = 0; i < mList.length; i++) {
    //used to track the replacable index: means index that contains zero
    if (mList[i] == 0) {
      for (int j = i; j < mList.length; j++) {
        //track number for swap
        if (mList[j] != 0) {
          //we will swap i with j
          final temp = mList[i];
          mList[i] = mList[j];
          mList[j] = temp;
          break;
        }
      }
    }
  }

  return mList;
}
