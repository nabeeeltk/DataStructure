// // bobul sort .........

// void bubbleSort(List<int> arr ){

//   for (var i=0;i<arr.length-1;i++){
//     for (var j=0;j<arr.length-1;j++){
//       if(arr[j]>arr[j+1]){
//         int temp=arr[j];
//         arr[j]=arr[j+1];
//         arr[j+1]=temp;
        
//       }
//     }
//   }
// }
// void main(List<String> args) {
//     List<int> numbers=[5,6,9,7,1,3,5,0,4,8,9,7];
//     bubbleSort(numbers);
//     print(numbers);
// }
//   void reverseArray(List<dynamic> arr) {
//   Stack<dynamic> stack = Stack<dynamic>();


//   for (var element in arr) {
//     stack.push(element);
//   }

//   for (int i = 0; i < arr.length; i++) {
//     arr[i] = stack.pop();
//   }
// }
// class Stack<T> {
//   List<T> _data = [];

//   void push(T value) {
//     _data.add(value);
//   }

//   T pop() {
//     if (_data.isEmpty) {
//       throw Exception('Stack is empty');
//     }
//     return _data.removeLast();
//   }

//   bool isEmpty() {
//     return _data.isEmpty;
//   }

//   int size() {
//     return _data.length;
//   }


// }
void bubbleSort(List<int> arr){
  for( var i=0;i<=arr.length-1;i++){
    for(var j=1;j<=arr.length-1;j++){
      if(arr[i]>arr[j]){
        int temp =arr[j];
        arr[j]=arr[j+1];
        arr[j+1]=temp;
      }
    }
  }
}
void selectionsort(List<int> arr){
  for(var i=0;i<arr.length-1;i++){
    int minIndex=i;
    for(var j=i+1;j<arr.length;j++){
      if(arr[j]<minIndex){
        minIndex=j;

      }
    }
    int temp= arr[i];
    arr[i]=arr[minIndex];
    arr[minIndex]=temp;

  }
}
void insationsort(List<int > arr){
  for(var i=0;i<=arr.length;i++){
    int j=i-1;
    int key = arr[i];
    for(var j=1;j<=arr.length;j++){
      
      j--;
    }
    arr[j+1]=key;
  }
}
void main(List<String> args) {
  List<int >arr=[5,8,9,7,6,1,2,7,0,4,];
  selectionsort(arr);
print(arr);
  // insationsort(arr);
  // print('insation sort is $arr');
  // bubbleSort(arr);
  // print('bobbulsort $arr');
}
