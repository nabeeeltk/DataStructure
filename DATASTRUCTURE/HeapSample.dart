class Heap {
 late  List<int> heap;

  Heap() {
    heap = [];
  }

  void addToHeap(int value) {
    heap.add(value);
    heapify(heap, heap.length, 0);
  }

  int? deleteFromHeap() {
    if (heap.length == 0) {
      return null;
    }

    int root = heap[0];
    heap[0] = heap[heap.length - 1];
    heap.removeLast();
    heapify(heap, heap.length, 0);

    return root;
  }

  void heapify(List<int> arr, int n, int i) {
    int largest = i;
    int l = 2 * i + 1;
    int r = 2 * i + 2;

    if (l < n && arr[l] > arr[largest]) {
      largest = l;
    }
    if (r < n && arr[r] > arr[largest]) {
      largest = r;
    }
    if (largest != i) {
      swap(arr, largest, i);
      heapify(arr, n, largest);
    }
  }

  void swap(List<int> arr, int i, int j) {
    int temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
  }

  void printHeap() {
    print("heap: $heap");
  }
}

void main() {
  Heap h = Heap();
  h.addToHeap(10);
  h.addToHeap(5);
  h.addToHeap(15);
  h.addToHeap(3);
  h.addToHeap(7);
  h.deleteFromHeap();
  h.printHeap();
}