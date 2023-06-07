// void bubbleSort(List<int> arr) {
//   int n = arr.length;

//   for (int i = 0; i < n - 1; i++) {
//     for (int j = 0; j < n - 1; j++) {
//       if (arr[j] > arr[j + 1]) {
//         int temp = arr[j];
//         arr[j] = arr[j + 1];
//         arr[j + 1] = temp;
//       }
//     }
//   }
// }

// void main(List<String> args) {
//   List<int> numbers = [5, 2, 9, 1, 7];
//   print("before sort$numbers");

//   bubbleSort(numbers);
//   print(numbers);
// 

void bubbleSort(List<int> arr){

  int n= arr.length;

  for (var i=0;i<n-1;i++){
    for(var j=0;j<n-1;j++){
      if(arr[j]>arr[j+1]){
        int temp = arr[j];
        arr[j]=arr[j+1];
        arr[j+1]=temp;
      }
    }
  }
 }
 void main(List<String> args) {

   List<int> numbers=[2,5,9,6,3,0,7];
    bubbleSort(numbers);
    print(numbers);

}