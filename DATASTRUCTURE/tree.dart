class TreeNode<T> {
  T value;
 late List<TreeNode<T>> children;

  TreeNode(this.value) {
    children = [];
  }

  void addChild(TreeNode<T> child) {
    children.add(child);
  }
}
void main() {
  // Create the root node
  var root = TreeNode<int>(1);

  // Create child nodes
  var child1 = TreeNode<int>(2);
  var child2 = TreeNode<int>(3);

  // Add child nodes to the root node
  root.addChild(child1);
  root.addChild(child2);
}
