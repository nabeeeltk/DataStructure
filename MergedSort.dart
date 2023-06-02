import 'dart:math';

List<int> mergeSort(List<int> arr) {
  if (arr.length <= 1) {
    return arr;
  }

  int mid = arr.length ~/ 2;
  List<int> left = arr.sublist(0, mid);
  List<int> right = arr.sublist(mid);

  return merge(mergeSort(left), mergeSort(right));
}

List<int> merge(List<int> right, List<int> left) {
  List<int> merge = [];

  int i = 0;
  int j = 0;

  while (i < left.length && j < right.length) {
    if (left[i] <= right[j]) {
      merge.add(i);
      i++;
    } else {
      merge.add(j);
      j++;
    }
  }
  while (i < left.length) {
    merge.add(left[i]);
    i++;
  }
  while (j < right.length) {
    merge.add(right[j]);
    j++;
  }
  return merge;
}

void main(List<String> args) {
  List<int> arr = [1, 8, 6, 7, 2, 8, 0, 9, 3];
  List<int> sortedArr = mergeSort(arr);
  print(sortedArr);
}
