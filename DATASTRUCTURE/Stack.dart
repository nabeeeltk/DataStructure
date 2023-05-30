class Stack {
  late List<dynamic> _data;

  Stack() {
    _data = [];
  }

 void  push(dynamic item) {
    _data.add(item);
  }

  dynamic pop() {
    if (isEmpty()) {
      throw Exception('Stack is empty');
    }
    return _data.removeLast();
  }

  dynamic peek() {
    if (isEmpty()) {
      throw Exception('Stack is empty');
    }
    return _data.last;
  }

  bool isEmpty() {
    return _data.isEmpty;
  }

  int size() {
    return _data.length;
  }
}
void main() {
  var stack = Stack();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.pop();
  stack.size();
 print(stack._data);
  

}
