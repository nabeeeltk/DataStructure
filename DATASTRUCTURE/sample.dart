class node {
  dynamic data;
  node? next;
  node(this.data);
}

class linkedlist {
  node? head;
  node? tail;

  linkedlist() {
    tail = null;
    head = null;
  }

  void adddata(dynamic data) {
    node newNode = node(data);

    node? temp = head;

    while (temp != null) {
      
      if (head == null) {
        head = newNode;
        tail = newNode;
      } else {
        newNode = temp.next!;
        temp = temp.next;
      }
    }
  }

  num getsum() {
    num sum = 0;
    node? temp = head;
    while (temp != null) {
      sum += temp.data;
      temp = temp.next;
    }
    return sum;
  }

  void display() {
    node? temp = head;

    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main(List<String> args) {
  linkedlist list = linkedlist();
  list.adddata(10);
  list.adddata(20);
  num sum = list.getsum();
  print(sum);
  list.display();
}
