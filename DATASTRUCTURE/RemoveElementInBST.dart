class TreeNode {
  late int value;
  TreeNode? left;
  TreeNode? right;

  TreeNode(this.value);
}

class BinarySearchTree {
  TreeNode? root;

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
      } else {
        return true;
      }
    }
    return false;
  }

  void remove(int value) {
    root = _removeNode(root, value);
  }

  TreeNode? _removeNode(TreeNode? node, int value) {
    if (node == null) {
      return null;
    } else if (value < node.value) {
      node.left = _removeNode(node.left, value);
    } else if (value > node.value) {
      node.right = _removeNode(node.right, value);
    } else {
      if (node.left == null) {
        return node.right;
      } else if (node.right == null) {
        return node.left;
      }

      TreeNode? minRightNode = _findMinNode(TreeNode(value));
      node.value = minRightNode.value;
      node.right = _removeNode(node.right, minRightNode.value);
    }

    return node;
  }

  TreeNode _findMinNode(TreeNode node) {
    TreeNode current = node;
    while (current.left != null) {
      current = current.left!;
    }
    return current;
  }
}

void main(List<String> args) {
  BinarySearchTree obj = BinarySearchTree();
  obj.insert(6);
  obj.insert(8);
  obj.insert(3);
  obj.insert(7);
  print(obj.contains(6));
  obj.remove(7);
  print(obj.contains(7));
}
