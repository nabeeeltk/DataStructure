class node {
  int data;
  node? head;
  node? next;
  node? preve;

  node(this.data);
}

class linkedlist {
  node? head;
  node? tail;

  void aadNode(int data) {
    node newnode = node(data);

    if (head == null) {
      head = newnode;
    } else {
      tail?.next = newnode;
      newnode.preve = tail;
    }
    tail = newnode;
  }


  void display() {
    node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  void displayReverse() {
    node? temp = tail;
    while (temp != null) {
      print(temp.data);
      temp = temp.preve;
    }
  }
}

void main() {
  linkedlist list = new linkedlist();
  list.aadNode(4);
  list.aadNode(1);
  list.aadNode(2);
  list.aadNode(3);
  list.aadNode(5);
  list.aadNode(6);
  list.display();
  list.displayReverse();
}
