// class Queue {
//   late List<dynamic> _data;

//   Queue() {
//     _data = [];
//   }

//   void enqueue(dynamic value) {
//     _data.add(value);
//   }

//   dynamic dequeue() {
//     if (_data.isEmpty) {
//       throw Exception('Queue is empty');
//     }
//     return _data.removeAt(0);
//   }

//   dynamic front() {
//     if (_data.isEmpty) {
//       throw Exception('Queue is empty');
//     }
//     return _data.first;
//   }

//   dynamic rear() {
//     if (_data.isEmpty) {
//       throw Exception('Queue is empty');
//     }
//     return _data.last;
//   }
// }

// void main() {
//   var queue = Queue();
//   queue.enqueue(20);
//   queue.enqueue(10);
//   queue.enqueue(30);
//   queue.enqueue(5);
//   queue.enqueue(15);
//   queue.dequeue();
//   queue.rear();
//   print(queue._data);
// }
class Queue {
  late List<dynamic> _data;

  Queue() {
    _data = [];
  }
  void enqueue(dynamic value) {
    _data.add(value);
  }

  void dequeue() {
    if (_data.isEmpty) {
      throw Exception('no data');
    }
    return _data.removeAt(0);
  }

  dynamic front() {
    if (_data.isEmpty) {
      throw Exception('no data');
    }
    return _data.first;
  }

  dynamic rear() {
    if (_data.isEmpty) {
      throw Exception('no data ');
    }
    return _data.last;
  }
}

void main(List<String> args) {
  Queue queue = Queue();

  queue.enqueue(10);
  queue.enqueue(20);
  print(queue._data);
}
