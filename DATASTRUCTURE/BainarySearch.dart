

// ------bainary Search..........

int bainaryIter(List<int> array, int target) {
  int startIndex = 0;
  int endIndex = array.length - 1;
  while (startIndex <= endIndex) {
    int middel = startIndex + (endIndex - startIndex ~/ 2);
    if (array[middel] == target) {
      return middel;
    } else if (array[middel] <= target) {
      startIndex = middel + 1;
    } else {
      endIndex = middel - 1;
    }
  }
  return -1;
}

// Bainary search with recersion.......

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
  int? result = bainaryrec(numbers, 10);
    print(bainaryIter(numbers, 2));

  if (result == -1) {
    print('Element not found.');
  } else {
    print('Element found at position $result');
  }
}
