// import 'DATASTRUCTURE/BobbleSort.dart';

// ........ bobbulesort .............

// void bobbulsort(List<int > array){
//   for(var i=0;i<array.length-1;i++){
//     for(var j=0;j<=array.length-1;j++){
//       if(array[j]>array[j+1]){
//         int temp = array[j];
//         array[j]=array[j+1];
//         array[j+1]=temp;

//       }
//     }
//   }
// }
// void main(List<String> args) {
//   List<int> array=[4,8,7,9,2,1,8,3];
//   bubbleSort(array);
//   print(array);
// }

// ....................insertionsort .....................

// void insertionSort(List<int> array) {
//   for (var i = 1; i < array.length; i++) {
//     int j = i - 1;
//     int key = array[i];
//     while (j >= 0 && array[j] > key) {
//       array[j + 1] = array[j];

//       j--;
//     }
//     array[j + 1] = key;
//   }
// }

// void main(List<String> args) {
//   List<int> array = [4, 8, 7, 9, 2, 1, 8, 3];
//   insertionSort(array);
//   print(array);
// }

// ....................selectionsort ...................

// void selectionsort(List<int> array ){
//   for(var i=0;i<array.length-1;i++){
//     int minIndex= i;
//     for(var j=i+1;j<array.length;j++){
//       if(array[j]<array[minIndex]){
//          minIndex=j;
//       }
//     }
//     int temp =array[i];
//     array[i]= array[minIndex];
//     array[minIndex] =temp;
//   }
// }
// void main(List<String> args) {
//   List<int> array = [4, 8, 7, 9, 2, 1, 0, 3];
//   selectionsort(array);
//   print(array);
// }

// ....... quick sort .............

// List<int> QuickSort(List<int> array) {
//   if (array.length <= 1) {
//     return array;
//   }
//   int pivot = array[array.length - 1];
//   List<int> smaller = [];
//   List<int> equal = [];
//   List<int> greater = [];

//   for (var num in array) {
//     if (num < pivot) {
//       smaller.add(num);
//     } else if (pivot == num) {
//       equal.add(num);
//     } else {
//       greater.add(num);
//     }
//   }
//   return [...QuickSort(smaller), ...equal, ...QuickSort(greater)];
// }

// void main(List<String> args) {
//   List<int> array = [4, 8, 7, 9, 2, 1, 8, 3];
//   List<int> sortedArr = QuickSort(array);
//   print(sortedArr);
// }

// List<int> mergedSort(List<int> array){
//   if(array.length<=1){
//   return array;
//   }
//   int mid = array.length~/2;
//   List<int> left = array.sublist(0,mid);
//   List<int> right= array.sublist(mid);

// return mergedsort(mergedSort(left), mergedSort(right));

// }
// List<int>mergedsort (List<int > left , List<int> right){

//   List<int> merged=[];
//   int i=0;
//   int j=0;
//   while(i< left.length&& j <right.length){
//     if(left.length<right.length){
//       merged.add(left[i]);
//       i++;
//     }else{
//       merged.add(right[j]);
//       j++;
//     }
//   }
//   while(i<left.length){
//     merged.add(left[i]);
//     i++;
//   }
// while(j<right.length){
//   merged.add(right[j]);
//   j++;
// }
// return merged;
// }
// void main(List<String> args) {
// List<int> array = [4, 8, 7, 9, 2, 1, 8, 3];
// List<int> sortedArr= mergedSort(array);
//  print(sortedArr);
// }

// class Queue {
//   late List<int> _data;

//   Queue() {
//     _data = [];
//   }
//   void enqueue(dynamic data) {
//     _data.add(data);
//   }

//   dequeue() {
//     if (_data.isEmpty) {
//       throw Exception('nodata');
//     }
//     return _data.removeAt(0);
//   }

//   front() {
//     if (_data.isEmpty) {
//       throw Exception('....');
//     }
//     return _data.first;
//   }

//   rear() {
//     if (_data.isEmpty) {
//       throw Exception('..........');
//     }
//     return _data.last;
//   }
// }
// void main(List<String> args) {
//   Queue queue=Queue();

//   queue.enqueue(10);
//   queue.enqueue(20);
//   queue.enqueue(30);
//   queue.dequeue();
//   print(queue._data);
// }

// import 'dart:io';

// class Stack {
//   late List<dynamic> _data;

//   Stack() {
//     _data = [];
//   }

//   void push(dynamic data) {
//     _data.add(data);
//   }

//   dynamic pop() {
//     if (_data.isEmpty) {
//       throw Exception('no data ');
//     }
//     return _data.removeLast();
//   }

//   peek() {
//     if (_data.isEmpty) {
//       throw Exception('no data ');
//     }
//     return _data.last;
//   }

//   size() {
//     if (_data.isEmpty) {
//       throw Exception('no data');
//     }
//     return _data.length;
//   }
// }

// void main(List<String> args) {
//   Stack stack = Stack();
//   stack.push(20);
//   stack.push(10);
//   stack.push(30);
//   stack.pop();
//   print(stack._data);
// }
