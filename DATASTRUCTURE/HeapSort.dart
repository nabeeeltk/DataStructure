void heapSort(List<int> array) {
  int n = array.length;

  for (int i =(n-1~/2); i > 0; i--) {
    heapyfy(array, n, i);
  }

  for (int i = n - 1; i > 0; i--) {
    int temp = array[0];
    array[0] = array[i];
    array[i] = temp;

    heapyfy(array, i, 0);
  }
}

void heapyfy(List<int> array, int i, int n) {
  

  int largest = i;
  final leftindex = 2 * i + 1;
  final righindex = 2 * i + 2;

  if (leftindex < n && array[leftindex] > array[largest]) {
    largest = leftindex;
  }
  if (righindex < n && array[righindex] >array[largest]) {
    largest = righindex;
  }
  if (largest!= i) {
    int temp = array[i];
    array[i] = array[largest];
    array[largest] = temp;
  heapyfy(array, largest, n);
  }
}
void main() {
  final List<int> numbers = [9, 2, 5,  7, 4, 8, 3, 6];
  print('Original Array: $numbers');

  heapSort(numbers);
  print('Sorted Array: $numbers');
}
