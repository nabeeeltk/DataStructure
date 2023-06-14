
class Heap {
  late List<int> _heap;

  Heap() {
    _heap = [];
  }
  void insert(int value) {
    _heap.add(value);
    _bubbleUp(_heap.length - 1);
  }

  remove() {
    if (_heap.isEmpty) {
      throw Exception("no data ");
    }

    final rootValue = _heap[0];
    final lastValue = _heap.removeLast();

    if (_heap.isNotEmpty) {
      _heap[0] = lastValue;
      _bubbleDown(0);
    }
    return rootValue;
  }

  _bubbleUp(int index) {
    while (index > 0) {
      int parentIndex = (index - 1) ~/ 2;

      if (_heap[parentIndex] > _heap[index]) {
        _swap(index, parentIndex);
        index = parentIndex;
      } else {
        break;
      }
    }
  }

  _bubbleDown(int index) {
    int lastIndex = _heap.length - 1;
    while (true) {
      final leftChildIndex = 2 * index + 1;
      final rightChildIndex = 2 * index + 2;

      int smallestIndex = index;

      if (leftChildIndex <= lastIndex &&
          _heap[leftChildIndex] <= _heap[lastIndex]) {
        smallestIndex = leftChildIndex;
      }
      if (rightChildIndex <= lastIndex &&
          _heap[rightChildIndex] <= _heap[lastIndex]) {
        smallestIndex = rightChildIndex;
      }
      if (smallestIndex != index) {
        _swap(index, smallestIndex);
        index = smallestIndex;
      } else {
        break;
      }
    }
  }

  _swap(int i, int j) {
    int temp = _heap[i];
    _heap[i] = _heap[j];
    _heap[j] = temp;
  }

 List<int> getHeap() {
    return _heap;
  }
  int  size(){
    return _heap.length;
  }
  bool isEmpty(){
      return _heap.isEmpty;
  }
}
void main(List<String> args) {
  final obj=Heap();
  obj.insert(2);
  obj.insert(3);
  obj.insert(9);
  obj.insert(6);
  obj.insert(11);
  print('heap ${obj._heap}');
}
