class stack{
 late  List<int> data;
 late List<int> auxStack;

 stack() {
  data=[];
  auxStack=[];
 }
 void push(int value){


  data.add(value);

 }
 dynamic pop(){
  if(data.isEmpty){
    throw Exception(' ');

  }
  return data.removeLast();
 }
   peak(){
    if (data.isEmpty) {
      throw Exception('');

    }
    return data.last;
   }
    size (){
     if (data.isEmpty) {
       throw Exception('');
     }
     return data.length;
   }
void deletemid(stack obj){
  int size= obj.size();

  int mid= size~/2;

  for(var i=0 ;i<=mid;i++){
    auxStack. add(pop());
    
  }
  while(auxStack.isNotEmpty){
    push(auxStack.removeLast());
  }

}
} 


void main(List<String> args) {
  stack obj =stack();
  obj.push(10);
  obj.push(20);
  obj.push(30);
  print(obj.data);

}