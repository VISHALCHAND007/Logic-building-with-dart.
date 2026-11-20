import 'dart:io';

void main() {
  /*

Question 1: Find the missing number

You are given a list containing distinct numbers from 1 to n, with exactly one 
number missing. Find the missing number.

Examples:
- [1, 2, 4, 5] → 3
- [2, 3, 1, 5] → 4
- [1] → 2 (assuming the original range is 1 to 2)
- [1, 2, 3, 4] → 5 (assuming the original range is 1 to 5)

*/
  // print(findMissingNum(mList: [1], lastDigit: 2));

  /*
Question 2: Check whether a number is a palindrome without reversing it

Examples:
- 121 → true
- 12321 → true
- 123 → false
- 7 → true
- 10 → false

  */
  print(isPalindrome(num: 10));
}

int findMissingNum({required List<int> mList, required int lastDigit}) {
  int missingNum = -1;
  mList.sort();

  if (mList.first != 1) return 1;

  for (int i = 0; i < mList.length - 1; i++) {
    if (mList[i + 1] != mList[i] + 1) {
      missingNum = mList[i] + 1;
      break;
    }
  }
  if (!mList.contains(lastDigit)) missingNum = lastDigit;

  return missingNum;
}

bool isPalindrome({required int num}) {
  if (num < 0) return false;

  final mList = splitNumIntoList(num);

  int ptr2 = mList.length - 1; //will be at the last index location

  for (int ptr1 = 0; ptr1 < mList.length ~/ 2; ptr1++) {
    //start from first index
    if (mList[ptr1] != mList[ptr2]) {
      return false;
    }
    ptr2--;
  }

  return true;
}

List<int> splitNumIntoList(int num) {
  final resultList = <int>[];

  if (num < 0) return resultList;
  if (num == 0) resultList.add(0);

  while (num > 0) {
    int lastDigit = num % 10;
    num ~/= 10;

    resultList.add(lastDigit);
  }
  return resultList.reversed.toList();
}
