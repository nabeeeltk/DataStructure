// void insertionSort(List<int> arr) {
//   int n = arr.length;

//   for (int i = 1; i < n; i++) {
//     int key = arr[i];
//     int j = i - 1;

//     while (j >= 0 && arr[j] > key) {
//       arr[j + 1] = arr[j];
//       j--;
//     }

//     arr[j + 1] = key;
//   }
// }

// void main() {
//   List<int> numbers = [5, 2, 9, 1, 7];

//   print('Before sorting: $numbers');

//   insertionSort(numbers);

//   print('After sorting: $numbers');
// }
void insertionSortsample(List<int> arr) {
  for (int i = 0; i < arr.length; i++) {
    int j = i - 1;
    int key = arr[i];
    while (j >= 0 && arr[j] > key) {
      arr[j + 1] = arr[j];
      j--;
    }
    arr[j + 1] = key;
  }
}

void main() {
  List<int> numbers = [5, 8, 3, 9, 2, 7, 0];

  insertionSortsample(numbers);
  print(numbers);
}
