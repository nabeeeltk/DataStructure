
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
        if (value > currentNode!.value) {
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
      } else if (value < currentNode.value) {
        currentNode = currentNode.right;
      } else {
        return true;
      }
    }
    return false;
  }
}
void main(List<String> args) {
   BinarySearchTree obj= BinarySearchTree();

  obj.insert(20);
  obj.insert(10);
  obj.insert(30);
   obj.insert(40);

   print(obj.contains(20));

      
}
