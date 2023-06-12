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
      TreeNode? currontnode = root;

      while (true) {
        if (value < currontnode!.value) {
          if (currontnode.left == null) {
            currontnode.left = newNode;
            break;
          } else {
            currontnode = currontnode.left;
          }
        } else {
          if (currontnode.right == null) {
            currontnode.right = newNode;
            break;
          } else {
            currontnode = currontnode.right;
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
      } else {
        return true;
      }
    }
    return false;
  }
}

void main(List<String> args) {
  BinarySearchTree obj = BinarySearchTree();

  obj.insert(9);
  obj.insert(6);
  obj.insert(3);
  obj.insert(7);
  obj.insert(1);
  obj.insert(4);
  print(obj.contains(2));
}
