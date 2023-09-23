class TreeNode {
  int value;
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
      } else {
        return true;
      }
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
    PreOrderHelper(root);
  }

  void PreOrderHelper(TreeNode? node) {
    if (node != null) {
      print(node.value);
      PreOrderHelper(node.left);
      PreOrderHelper(node.right);
    }
  }

  void PostOrder() {
    PostOrderHelper(root);
  }

  void PostOrderHelper(TreeNode? node) {
    if (node != null) {
      PostOrderHelper(node.left);
      PostOrderHelper(node.right);
      print(node.value);
    }
  }
}

void main(List<String> args) {
  BinarySearchTree obj = BinarySearchTree();
  obj.insert(10);
  obj.insert(8);
  obj.insert(11);
  obj.insert(4);
  obj.insert(9);

  print(obj.contains(10));
  
}
