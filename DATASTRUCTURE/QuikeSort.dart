void quickSort(List<int> arr, int low, int high) {
  if (low < high) {
    int pivotIndex = partition(arr, low, high);

    quickSort(arr, low, pivotIndex - 1);
    quickSort(arr, pivotIndex + 1, high);
  }
}

int partition(List<int> arr, int low, int high) {
  int pivot = arr[high];

  int i = low - 1;

  for (int j = low; j < high; j++) {
    if (arr[j] < pivot) {
      i++;
      swap(arr, i, j);
    }
  }

  swap(arr, i + 1, high);

  return i + 1;
}

void swap(List<int> arr, int i, int j) {
  int temp = arr[i];
  arr[i] = arr[j];
  arr[j] = temp;
}

void main() {
  List<int> arr = [10, 7, 8, 9, 1, 5];
  int n = arr.length;

  quickSort(arr, 0, n - 1);

  print('Sorted array: $arr');
}
//  import 'dart:math';

// void quicksort(List <int>array ,int  start , int end ){
//    int pivotIndex=partetion(array, start, end);
//   if(end<start){
//   quicksort(array, start,pivotIndex-1);
//   quicksort(array, pivotIndex+1, end);
//   }
//  }
//  int  partetion(List <int > array ,int start ,int end){
//     int pivot=array[end];
//     int i =start-1;
//     for(var j=0;j<=end;j++){
//       if(array[start]<pivot){

//       }
//     }
//  }