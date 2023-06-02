// class node {
//   dynamic data;
//   node? next;
//   node(this.data);
// }

// class stack {
//   node? Head;

//   bool get isEmpty => Head == Null;

//   void push(dynamic data) {
//     node newnode = node(data);
//     newnode.next = Head;
//     Head = newnode;
//   }

//   dynamic pop() {
//     if (isEmpty) {
//       return 'stack is empty';
//     } else {
//       node popnode = Head!;
//       Head = Head!.next;
//       popnode.next = null;
//       return popnode.data;
//     }
//   }

//   void display() {
//     if (isEmpty) {
//       print('no data');
//     } else {
//       node? temp = Head!;
//       while (temp != null) {
//         print(temp.data);
//         temp = temp.next!;
//       }
//     }
//   }
// }

// void main(List<String> args) {
//   stack Stack = stack();
//   Stack.push(20);
//   Stack.push(10);
//   Stack.push(30);
//   Stack.pop();
//   Stack.pop();
//   Stack.display();
// }
class node {
  node? next;
  dynamic data;
  node(this.data);
}

class Stack {
  node? Head;
  bool get isEmpty => Head == null;

  void push(dynamic data) {
    node pushnode = node(data);

    pushnode.next = Head;
    Head = pushnode;
  }

  dynamic pop() {
    if (isEmpty) {
      return 'stack is empty';
    } else {
      node popnode = Head!;
      Head = popnode.next;
      popnode.next = null;
      return popnode.data;
    }
  }

  void display() {
    if (isEmpty) {
      return;
    } else {
      node tamp = Head!;
      while (tamp != null) {
        print(tamp.data);
        tamp = tamp.next!;
      }
    }
  }
}

void main(List<String> args) {
  Stack stack = Stack();
  stack.push(10);
  stack.push(20);
  stack.push(30);
  stack.pop();
  stack.display();
}

  