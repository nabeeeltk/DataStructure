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
  void reverseArray(List<dynamic> arr) {
  Stack<dynamic> stack = Stack<dynamic>();


  for (var element in arr) {
    stack.push(element);
  }

  for (int i = 0; i < arr.length; i++) {
    arr[i] = stack.pop();
  }
}
class Stack<T> {
  List<T> _data = [];

  void push(T value) {
    _data.add(value);
  }

  T pop() {
    if (_data.isEmpty) {
      throw Exception('Stack is empty');
    }
    return _data.removeLast();
  }

  bool isEmpty() {
    return _data.isEmpty;
  }

  int size() {
    return _data.length;
  }


}
void main(List<String> args) {
  List<int> arr=[4,5,9,8];
  reverseArray(arr);
print(arr);
}
