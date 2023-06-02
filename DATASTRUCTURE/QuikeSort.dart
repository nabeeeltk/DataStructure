import 'dart:math';

List<int> QuickSort(List<int> a) {
  if (a.length <= 1) {
    return a;
  }

  int pivot = a[a.length - 1];
  List<int> smaller = [];
  List<int> equal = [];
  List<int> greater = [];

  for (int num in a) {
    if (num < pivot) {
      smaller.add(num);
    } else if (num == pivot) {
      equal.add(num);
    } else {
      greater.add(num);
    }
  }

  return [...QuickSort(smaller), ...equal, ...QuickSort(greater)];
}

void main(List<String> args) {
  List<int> a = [5, 9, 0, 7, 3, 4, 8, 1];
  List<int> sortedArr = QuickSort(a);
  print(sortedArr);
}
