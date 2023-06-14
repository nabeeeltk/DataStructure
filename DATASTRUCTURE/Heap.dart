// class MinHeaap {
//   late List<int> _heap;

//   MinHeaap() {
//     _heap = [];
//   }
//   void insert(int value) {
//     _heap.add(value);
//     _bubbleUp(_heap.length - 1);
//   }

//   int removeMin() {
//     if (_heap.isEmpty) {
//       throw Exception('no data');
//     }
//     final minValue = _heap[0];
//     final lastValue = _heap.removeLast();

//     if (_heap.isEmpty) {
//       _heap[0] = lastValue;
//       _bubbleDown(0);
//     }
//     return minValue;
//   }

//   int getMin() {
//     if (_heap.isEmpty) {
//       throw Exception('no data');
//     }
//     return _heap[0];
//   }

//   bool isEmpty() {
//     return _heap.isEmpty;
//   }

//   int size() {
//     return _heap.length;
//   }

//   void _bubbleUp(int index) {
//     final parantIndex = (index - 1) ~/ 2;

//     if (index > 0 && _heap[parantIndex] > _heap[index]) {
//       _swap(index, parantIndex);
//       _bubbleUp(parantIndex);
//     }
//   }

//   void _bubbleDown(int index) {
//     final leftchildIndex = 2 * index + 1;
//     final righchildIndex = 2 * index + 2;
//     int smallestIndex = leftchildIndex;
//     if (leftchildIndex < _heap.length &&
//         _heap[leftchildIndex] < _heap[smallestIndex]) {
//       smallestIndex = leftchildIndex;
//     }
//     if (righchildIndex < _heap.length &&
//         _heap[righchildIndex] < _heap[smallestIndex]) {
//       smallestIndex = righchildIndex;
//     }
//     if (smallestIndex != index) {
//       _swap(index, smallestIndex);
//       _bubbleDown(smallestIndex);
//     }
//   }

//   void _swap(int i, int j) {
//     final temp = _heap[i];
//     _heap[i] = _heap[j];
//     _heap[j] = temp;
//   }
// }

// void main(List<String> args) {
//   final obj = MinHeaap();
//   obj.insert(5);
//   obj.insert(3);
//   obj.insert(8);
//   obj.insert(1);
//   obj.insert(10);
//   // print(obj.size());
//   // print(obj.getMin());

//   while (obj.isEmpty()) {
//     final minValue = obj.removeMin();
//     print(minValue);
//   }
// }

class Heap{
  late List<int> _heap;

  Heap(){
    _heap=[];

  }

  void insert(int value ){
    _heap.add(value);
    _bubbleUp(_heap.length-1);

  }

   remove(){
    if(_heap.isEmpty){
      throw Exception('no data ');
    }
    final rootValue=_heap[0];
    final lastValue=_heap.removeLast();

    if(_heap.isEmpty){
      _heap[0]=lastValue;
      _bubbleDown(0);

    }
    return lastValue;
  }

  _bubbleUp(int index){
    while(index>0){
      final parentIndex=(index-1)~/2;

      if(_heap[parentIndex]<_heap[index]){
            _swap(index,parentIndex);
             index=parentIndex;
      }
    }
  }
  _bubbleDown(int index){
    final lastIndex= _heap.length-1;

    while(true){
      final leftchildIndex=2*index+1;
      final rightChildIndex=2*index+2;
    int  smallestIndex=index;

      if(leftchildIndex<=lastIndex&&_heap[leftchildIndex]<=_heap[lastIndex]){
        smallestIndex=leftchildIndex;
      }
      if(rightChildIndex<=lastIndex&&_heap[rightChildIndex]<=_heap[lastIndex]){
        smallestIndex=rightChildIndex;
      }
      if(smallestIndex!=index){
         _swap(index,smallestIndex);
         index=smallestIndex;
      }else{
        break;
      }
    }
  }
  void _swap(int i , int j){
    int temp=_heap[i];
    _heap[i]=_heap[j];
    _heap[j]=temp;
  }
  bool isEmpty(){
    return _heap.isEmpty;
  }
  int size (){
    return _heap.length;
  }
 List< int> getHeap(){
    return _heap;
  }
}
void main(List<String> args) {
  final obj= Heap();

  obj.insert(5);
  obj.insert(8);
  obj.insert(3);
  obj.insert(7);
  obj.insert(4);

  print(obj.getHeap());

  
}
