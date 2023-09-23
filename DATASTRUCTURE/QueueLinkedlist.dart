// class node {
//   dynamic data;
//   node? next;
//   node(this.data);
// }

// class Queue {
//   node? front;
//   node? rear;
//   bool get isEmpty => front == null;

//   void enqueue(dynamic data) {
//     node newnode = node(data);
//     if (isEmpty) {
//       front = newnode;
//       rear = newnode;
//     } else {
//       rear!.next = newnode;
//       rear = newnode;
//     }
//   }

//   dynamic dequeue() {
//     if (isEmpty) {
//       return 'no data';
//     } else {
//       node dequeuenode = front!;
//       front = front!.next;
//       if (front == null) {
//         rear = null;
//       }
//       dequeuenode.next = null;
//       return dequeuenode.data;
//     }
//   }

//   void display() {
//     if (isEmpty) {
//       return;
//     } else {
//       node temp = front!;
//       while (temp != null) {
//         print(temp.data);
//         temp = temp.next!;
//       }
//     }
//   }
// }

// void main(List<String> args) {
//   Queue queue = Queue();
//   queue.enqueue(20);
//   queue.enqueue(10);
//   queue.enqueue(30);
//   queue.dequeue();
//   queue.display();
// }

class node {
  dynamic data;
  node? next;
  node(this.data);
}

class Queue {
  node? front;
  node? rear;

  bool get isEmpty => front == null;

  void Enqueue(dynamic data) {
    node newnode = node(data);
    if (isEmpty) {
      front = newnode;
      rear = newnode;
    } else {
      rear!.next = newnode;
      rear = newnode;
    }
  }

  dynamic dequeue() {
    if (isEmpty) {
      return 'no data ';
    } else {
      node dequeuenode = front!;
      front = front!.next;
      if (front == null) {
        rear = null;
      }
      dequeuenode.next = null;
      return dequeuenode.data;
    }
  }

  void display() {
    if (isEmpty) {
      return;
    } else {
      node temp = front!;
      // ignore: unnecessary_null_comparison
      while (temp!= null) {
        print(temp.data);
        temp = temp.next!;
      }
    }
  }
}


void main(List<String> args) {
  Queue queue = Queue();
  queue.Enqueue(10);
  queue.Enqueue(20);
  queue.display();
}
