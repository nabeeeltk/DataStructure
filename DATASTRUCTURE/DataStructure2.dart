import 'dart:ffi';
import 'dart:math';

int? bainarysearch(List<int> array, int target) {
  int startIndex = 0;
  int endIndex = array.length - 1;
  while (startIndex <= endIndex) {
    int middile = startIndex + (endIndex - startIndex ~/ 2);

    if (array[middile] == target) {
      return middile;
    } else if (array[middile] <= target) {
      startIndex = middile + 1;
    } else {
      endIndex = middile - 1;
    }
  }
  return -1;
}

int? bainaryrec(List<int> array, int target) {
  return bainaryhelp(array, target, 0, array.length - 1);
}

int? bainaryhelp(List<int> array, int target, int startIndex, int endIndex) {
  if (startIndex > endIndex) {
    return -1;
  }

  int middle = startIndex + (endIndex - startIndex) ~/ 2;
  if (array[middle] == target) {
    return middle;
    
  } else if (array[middle] > target) {
    return bainaryhelp(array, target, startIndex, middle - 1);
  } else {
    return bainaryhelp(array, target, middle + 1, endIndex);
  }
}


void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  int? result = bainaryrec(numbers, 3);

  if (result == -1) {
    print('Element not found.');
  } else {
    print('Element found at position $result');
  }
}
