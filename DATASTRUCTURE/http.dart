// Future get(List<String> args)async {
  
//   var url =  Uri.parse("");

//   var responcce= http.get(url);

//   if(responcce.statuscode==200){
//     print(responcce.body);
//   }else{
//     print("no data");
//   }
 
// }


void bubbleSort(List<int>arr){

for(var i=0;i<=arr.length-1;i++){
  for(var j=0;j<arr.length-1;j++){

    if(arr[j]>arr[j+1]){
     int  temp=arr[j];
     arr[j]=arr[j+1];
     arr[j+1]=temp;
    }
  }
}
}
void main(List<String> args) {
  List<int> arr1=[5,8,7,9,1,4,6,2,];

  bubbleSort(arr1);
  print(arr1);
}