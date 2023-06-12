class treenode {
  late int value;
  treenode? left;
  treenode? right;
  treenode(this.value);
}

class BinarysearchTree {
  treenode? root;
  BinarysearchTree();

  void insert(int value) {
    treenode newnode = treenode(value);

    if (root == null) {
      root = newnode;
    } else {
      treenode? currenttnode = root;

      while (true) {
        if (value < currenttnode!.value) {
          if (currenttnode.left == null) {
            currenttnode.left = newnode;
            break;
          } else {
            currenttnode = currenttnode.left;
          }
        } else {
          if (currenttnode.right == null) {
            currenttnode.right = newnode;
            break;
          } else {
            currenttnode = currenttnode.right;
          }
        }
      }
    }
  }



  bool cuntains(int value) {
    treenode? currenttnode = root;
    while (currenttnode != null) {
      if (value < currenttnode.value) {
        currenttnode = currenttnode.left;
      } else if (value < currenttnode.value) {
        currenttnode = currenttnode.right;
      } else {
        return true;
      }
    }
    return false;
  }
}

void main(List<String> args) {
  BinarysearchTree obj = BinarysearchTree();
  obj.insert(6);
  obj.insert(8);
  obj.insert(3);
  obj.insert(7);
  print(obj.cuntains(6));
}
