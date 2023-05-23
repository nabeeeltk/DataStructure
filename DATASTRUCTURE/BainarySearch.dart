import 'dart:ffi';

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

void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  int target = 7;
  int result = bainaryIter(numbers, target);
  if (result == -1) {
    print('element not found');
  } else {
    print('element founded at position$result');
  }
}
