// void bobbulesort(List<int>array ){
  
//   for(var i=0;i<array.length-1;i++){
//     for(var j=0;j<array.length-1;j++){

//       if(array[j]>array[j+1]){

//         int temp= array[j];
//         array[j]=array[j+1];
//         array[j+1]=temp;

//       }
//     }
//   }
// }


// void insertionSort(List<int> array){
//   for(var i=1;i<array.length;i++){
//     int j=i-1;
//     int key = array[i];
//     while(j>=0&&array[j]>key){
//       array[j+1]= array[j];
//       j--;

//     }
//     array[j+1]=key;

//   }
// }
// void main(List<String> args) {
//   List<int> array=[5,8,6,3,1,7,6,9];
//    insertionSort(array);
//   print(array);
// }

// void selectionsort(List<int> array){
//   for(var i=0;i<=array.length-1;i++){
//     int minIndex= i;

//     for(var j=i+1;j<array.length;j++){

//         if(array[j]<array[minIndex]){
//           minIndex=j;
//         }

//   }
//   int temp=array[i];
//   array[i]=array[minIndex];
//   array[minIndex]=temp;

//   }
// }
// void main(List<String> args) {
//   List<int> array=[5,8,6,3,1,7,0,6,9];
//   selectionsort(array);
//   print(array);
// }
// List<int> QuickSort( List<int> array){
//   if(array.length<=1){
//     return array;
//   }
//   int pivot = array[array.length-1];
//   List<int> smaller=[];
//   List<int> equal=[];
//   List<int> greater=[];

//   for(var num in array){
//     if(num<pivot){
//       smaller.add(num);
//     }else if(num==pivot){
//       equal.add(num);

//     }else{
//       greater.add(num);
//     }
//   }
//   return [...QuickSort(smaller),...equal,...QuickSort(greater)];

// }
// void main(List<String> args) {
//   List<int> array=[5,8,6,3,1,7,0,6,9];
//   List<int> sortedArr=QuickSort(array);
//   print(sortedArr);
// }

// List<int> mergedSort(List<int> arr){
//   if(arr.length<=1){
//     return arr;
//   }
//   int mid= arr.length~/2;
//   List<int>left=arr.sublist(0,mid);
//   List<int> right=arr.sublist(mid );
//   return mergedsort(mergedSort(left),mergedSort(right));

// }
// List<int> mergedsort(List<int> left ,List<int> right){

//   List<int> merged=[];
//   int j=0;
//   int i=0;

//   while(i<left.length&&j<right.length){
//     if(left.length<right.length){
//       merged.add(i);
//       i++;
//     }else{
//       merged.add(i);
//       j++;
//     }
//   }
//   while(i<left.length){
//     merged.add(left[i]);
//     i++;
//   }
//   while(j<right.length){
//     merged.add(j);
//     j++;
//   }
//   return merged;
// }
// void main(List<String> args) {
//   List<int> arr=[5,4,9,8,3,6,0,7,1];
//   List<int> sortedArr=mergedSort(arr);
//   print(sortedArr);

// }


// class stack{
// late  List<int> data;

// stack(){
//   data=[];

// }

// void push(int value){
//   data.add(value);
// }
// dynamic pop(){
//   if(data.isEmpty){
//     throw Exception('ni data');
//   }
//   return data.removeLast();

// }
//  int peak(){
//   if(data.isEmpty){
//     throw Exception('no data ');
//   }
//   return data.last;
// }
//  int size (){
//    if(data.isEmpty){
//     throw Exception('no data ');

//    }
//    return data.length;
// }

// }
// void main(List<String> args) {
//   stack Stack  =stack();
//   Stack.push(20);
//   Stack.push(10);
//   Stack.push(30);
//   Stack.pop();
//   print(Stack.data);
// }
// class Queue{
//   late List<int> data;

//   Queue(){
//     data=[];

//   }
//   void enqueue(int value){

//     data.add(value);

//   }
//    dynamic dequeue (){

//     if(data.isEmpty){
//       throw Exception('no data');
//     }
//    return data.removeAt(0);
//    }
//    int front (){
//     if(data.isEmpty){
      
//     throw Exception('no data ');
//     }

//      return data.first;
//    }
//    int rear(){
//     if(data.isEmpty){
//       throw Exception('no data ');

//     }
//     return data.last;
//    }

// }
// void main(List<String> args) {
//   Queue queue= Queue();

//   queue.enqueue(10);
//   queue.enqueue(20);
//   queue.enqueue(30);
//   print(queue.data);
//   queue.dequeue();
//   print(queue.data);

// }
