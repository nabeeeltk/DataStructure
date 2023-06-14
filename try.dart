// class TreeNode {
//   late int value;
//   TreeNode? left;
//   TreeNode? right;
//   TreeNode(this.value);
// }

// class BinarySearchTree {
//   TreeNode? root;
//   BinarySearchTree();

//   void insert(int value) {
//     TreeNode newNode = TreeNode(value);
//     if (root == null) {
//       root = newNode;
//     } else {
//       TreeNode? currentNode = root;

//       while (true) {
//         if (value < currentNode!.value) {
//           if (currentNode.left == null) {
//             currentNode.left = newNode;
//             break;
//           } else {
//             currentNode = currentNode.left;
//           }
//         } else {
//           if (currentNode.right == null) {
//             currentNode.right = newNode;
//             break;
//           } else {
//             currentNode = currentNode.right;
//           }
//         }
//       }
//     }
//   }

//   bool contains(int value) {
//     TreeNode? currentNode = root;

//     while (currentNode != null) {
//       if (value < currentNode.value) {
//         currentNode = currentNode.left;
//       } else if (value > currentNode.value) {
//         currentNode = currentNode.right;
//       }
//       return true;
//     }
//     return false;
//   }

//   void InOrder() {
//     if (root != null) {
//       InOrderHelper(root);
//     }
//   }

//   void InOrderHelper(TreeNode? node) {
//     if (node != null) {
//       InOrderHelper(node.left);
//       print(node.value);
//       InOrderHelper(node.right);
//     }
//   }

//   void PreOrder() {
//     if (root != null) {
//       PreOrderHelper(root);
//     }
//   }

//   void PreOrderHelper(TreeNode? node) {
//     if (node != null) {
//       print(node.value);
//       PreOrderHelper(node.left);
//       PreOrderHelper(node.right);
//     }
//   }

//   void PostOrder() {
//     if (root != null) {
//       PostOrderHelper(root);
//     }
//   }

//   void PostOrderHelper(TreeNode? node) {
//     if (node != null) {
//       PostOrderHelper(node.left);
//       PostOrderHelper(node.right);
//       print(node.value);
//     }
//   }

//   int findClosest(int target) {
//     TreeNode? current = root;
//     int closest = current!.value;
//     while (current != null) {
//       if (target - closest > target - current.value) {
//         closest = current.value;
//       }
//       if (target < current.value) {
//         current = current.left;
//       } else if (target > current.value) {
//         current = current.right;
//       } else {
//         break;
//       }
//     }
//     return closest;
//   }
// }

// void main(List<String> args) {
//   BinarySearchTree obj = BinarySearchTree();

//   obj.insert(11);
//   obj.insert(9);
//   obj.insert(4);
//   obj.insert(2);

//   // print('.....................');

//   // obj.PostOrder();

//   // print('........................');

//   // obj.PreOrder();
//   // print('.................');
//   print(obj.findClosest(2));
// }
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
      throw Exception('no data');
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
      int parentIndex = (index - 1) ~/ 2;

      if (_heap[parentIndex] > _heap[index]) {
        _swap(index, parentIndex);
        index = parentIndex;
      } else {
        break;
      }
    }
  }

  void _bubbleDown(int index) {
    int lastIndex = _heap.length - 1;

    while (true) {
      final leftChildIndex = 2 * index + 1;
      final rightChildIndex = 2 * index + 2;
      int smallestIndex = index;

      if (leftChildIndex <= lastIndex &&
          _heap[leftChildIndex] <= _heap[smallestIndex]) {
        smallestIndex = leftChildIndex;
      }
      if (rightChildIndex <= lastIndex &&
          _heap[rightChildIndex] <= _heap[smallestIndex]) {
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
    int temp = _heap[i];
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

void main(List<String> args) {
  final obj = Heap();
  obj.insert(2);
  obj.insert(9);
  obj.insert(5); 
  obj.insert(6);
  obj.insert(8);

  print("Heap: ${obj.getHeap()}");

  // while(!obj.isEmpty()){
  //   final removevallue=obj.remove();

  // print('removed value is ${removevallue}');
  // }
}

