class Solution {
  List<int> addToArrayForm(List<int> num, int k) {
    List<String> kList = k.toString().split('').reversed.toList();
    List<int> numList = num.reversed.toList();
    int maxLength = numList.length >= kList.length
        ? numList.length
        : kList.length;

    int oldN = 0;
    List<int> newList = [];

    for (int i = 0; i < maxLength; i++) {
      int a;
      int b;

      if (kList.length <= i) {
        a = 0;
      } else {
        a = int.parse(kList[i]);
      }
      if (numList.length <= i) {
        b = 0;
      } else {
        b = numList[i];
      }

      int c = a + b + oldN;
      if (c > 9) {
        newList.add(c - 10);
        oldN = 1;
      } else {
        newList.add(c);
        oldN = 0;
      }
    }
    if (oldN != 0){
      newList.add(oldN);
    }
    return newList.reversed.toList();
  }
}

void main(List<String> args) {
  var solution = Solution();
  print(solution.addToArrayForm([2, 1, 5], 806));
}
