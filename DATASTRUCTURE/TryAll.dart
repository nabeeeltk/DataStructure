// bobul sort .........

void bubbleSort(List<int> arr ){

  for (var i=0;i<arr.length-1;i++){
    for (var j=0;j<arr.length-1;j++){
      if(arr[j]>arr[j+1]){
        int temp=arr[j];
        arr[j]=arr[j+1];
        arr[j+1]=temp;
        
      }
    }
  }
}
void main(List<String> args) {
    List<int> numbers=[5,6,9,7,1,3,5,0,4,8,9,7];
    bubbleSort(numbers);
    print(numbers);
}