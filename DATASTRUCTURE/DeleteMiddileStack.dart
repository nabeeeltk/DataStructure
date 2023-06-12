

import 'MergedSort.dart';

void insationsort (List<int> array){
  for(var i=0;i<array.length;i++){
    int j=i-1;
    int key =array[i];
while(j>=0&&array[j]>key){
  array[j+1]=array[j];
  j--;

}
array[j+1]=key;
  }
}
void main(List<String> args) {
  List<int> array=[8,7,5,6,4,1,9];
  insationsort(array);
  print(array);

}
void selectionsort (List<int> arr){
  for(var i=1;i<arr.length-1;i++){

  int minIndex= i;
  for(var j=i+1;j<arr.length;j++){
    if(arr[j]<arr[minIndex]){
      minIndex=j;
    }
  }
  int temp= arr[i];
  arr[i]=arr[minIndex];
  arr[minIndex]=temp;

  }

}

List<int> merged(List<int> arr){
if(arr.length<=1){
  return arr;
  
  
}
int mid=arr.length~/2;
List<int> left=[];
List<int>right=[];
return mergedsort(mergeSort(left),mergeSort(right));

}
mergedsort(List<int> left,List<int > right){

  List<int> merged=[];
  int i=0;
  int j=0;
while(i<left.length&&j<right.length){
  if(left.length<right.length){
    merged.add(i);
    i++;
  }else{
    merged.add(j);
    j++;
  }
}
while(i<left.length){
  merged.add(left[i]);
  i++;

}
while(j<right.length){
  merged.add(right[j]);
  j++;
}
return merged;
}

