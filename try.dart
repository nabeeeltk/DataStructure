class TreeNode {
  late int value;
  TreeNode? left;
  TreeNode? right;
  TreeNode(this.value);
}

class BinarySearchTree {
  TreeNode? root;
  BinarySearchTree();

  void insert(int value) {
    TreeNode newNode = TreeNode(value);
    if (root == null) {
      root = newNode;
    } else {
      TreeNode? currentNode = root;

      while (true) {
        if (value < currentNode!.value) {
          if (currentNode.left == null) {
            currentNode.left = newNode;
            break;
          } else {
            currentNode = currentNode.left;
          }
        } else {
          if (currentNode.right == null) {
            currentNode.right = newNode;
            break;
          } else {
            currentNode = currentNode.right;
          }
        }
      }
    }
  }

  bool contains(int value) {
    TreeNode? currentNode = root;

    while (currentNode != null) {
      if (value < currentNode.value) {
        currentNode = currentNode.left;
      } else if (value > currentNode.value) {
        currentNode = currentNode.right;
      }
      return true;
    }
    return false;
  }

  void InOrder() {
    if (root != null) {
      InOrderHelper(root);
    }
  }

  void InOrderHelper(TreeNode? node) {
    if (node != null) {
      InOrderHelper(node.left);
      print(node.value);
      InOrderHelper(node.right);
    }
  }

  void PreOrder() {
    if (root != null) {
      PreOrderHelper(root);
    }
  }

  void PreOrderHelper(TreeNode? node) {
    if (node != null) {
      print(node.value);
      PreOrderHelper(node.left);
      PreOrderHelper(node.right);
    }
  }

  void PostOrder() {
    if (root != null) {
      PostOrderHelper(root);
    }
  }

  void PostOrderHelper(TreeNode? node) {
    if (node != null) {
      PostOrderHelper(node.left);
      PostOrderHelper(node.right);
      print(node.value);
    }
  }

  int findClosest(int target) {
    TreeNode? current = root;
    int closest = current!.value;
    while (current != null) {
      if (target - closest > target - current.value) {
        closest = current.value;
      }
      if (target < current.value) {
        current = current.left;
      } else if (target > current.value) {
        current = current.right;
      } else {
        break;
      }
    }
    return closest;
  }
}

void main(List<String> args) {
  BinarySearchTree obj = BinarySearchTree();

  obj.insert(11);
  obj.insert(9);
  obj.insert(4);
  obj.insert(2);

  // print('.....................');

  // obj.PostOrder();

  // print('........................');

  // obj.PreOrder();
  // print('.................');
  print(obj.findClosest(2));
}
