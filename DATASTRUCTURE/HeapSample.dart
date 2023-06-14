class Heap {
  late  List<int> _heap;

  Heap() {
    _heap = [];
  }

  void insert(int value) {
    _heap.add(value);
    _bubbleUp(_heap.length - 1);
  }

  int remove() {
    if (_heap.isEmpty) {
      throw Exception("Heap is empty.");
    }

    final rootValue = _heap[0];
    final lastValue = _heap.removeLast();

    if (_heap.isNotEmpty) {
      _heap[0] = lastValue;
      _bubbleDown(0);
    }

    return rootValue;
  }

  void _bubbleUp(int index) {
    while (index > 0) {
      final parentIndex = (index - 1) ~/ 2;
      if (_heap[parentIndex] > _heap[index]) {
        _swap(index, parentIndex);
        index = parentIndex;
      } else {
        break;
      }
    }
  }

  void _bubbleDown(int index) {
    final lastIndex = _heap.length - 1;

    while (true) {
      final leftChildIndex = 2 * index + 1;
      final rightChildIndex = 2 * index + 2;
      int smallestIndex = index;

      if (leftChildIndex <= lastIndex && _heap[leftChildIndex] < _heap[smallestIndex]) {
        smallestIndex = leftChildIndex;
      }

      if (rightChildIndex <= lastIndex && _heap[rightChildIndex] < _heap[smallestIndex]) {
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

  void _swap(int i, int j) {
    final temp = _heap[i];
    _heap[i] = _heap[j];
    _heap[j] = temp;
  }

  bool isEmpty() {
    return _heap.isEmpty;
  }

  int size() {
    return _heap.length;
  }

  List<int> getHeap() {
    return _heap;
  }
}

void main() {
  final heap = Heap();

  heap.insert(5);
  heap.insert(3);
  heap.insert(8);
  heap.insert(1);
  heap.insert(10);

  print("Heap: ${heap.getHeap()}"); // Output: Heap: [1, 3, 8, 5, 10]

  while (!heap.isEmpty()) {
    final removedValue = heap.remove();
    print("Removed value: $removedValue");
  }
  // Output:
  // Removed value: 1
  // Removed value: 3
  // Removed value: 5
  // Removed value: 8
  // Removed value: 10
}
