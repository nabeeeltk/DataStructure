import 'datasructure3.dart';

class Node {
  dynamic data;
  Node? next;

  Node(this.data);
}

class LinkedList {
  Node? head;
  Node? tail;

  LinkedList() {
    head = null;
    tail = null;
  }

  void addData(dynamic data) {
    Node newNode = Node(data);

    if (head == null) {
      head = newNode;
      tail = newNode;
    } else {
      tail?.next = newNode;
      tail = newNode;
    }
  }
  num getSum() {
    num sum = 0;
    Node? temp = head;

    while (temp != null) {
      sum += temp.data;
      temp = temp.next;
    }

    return sum;
  }
 

  

  void display() {
    if (head == null) {
      print("empty");
      return;
    }
    Node? temp = head;

    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main(List<String> args) {
  LinkedList list = LinkedList();
  list.addData(5);
  list.addData(140);
  list.addData(50);
  // list.insertAfter(3, 5);
  list.display();
  num sum= list.getSum();
  print('sum is ${sum}');
}
// void insertAfter(int data, int nexto) {
  //   Node newNode = Node(data);
  //   Node? temp = head;
  //   while (temp != null && temp.data != nexto) {
  //     temp = temp.next;
  //   }
  //   if (head == null) {
  //     return;
  //   }
  //   if (temp == tail) {
  //     temp?.next = newNode;
  //     tail = newNode;
  //     return;
  //   }

  //   newNode.next = temp?.next;
  //   temp?.next = newNode;
  // }


 class node{
     dynamic data;
     Node? next;

     node(this.data

     ) ;
      }
      class linkedList{
        
      node? head;
      node?tail;
      linkedList(){
        head =null;
        tail =null;
      }

      void addData(dynamic data){
        node newNode =node(data);

        if(head==null){
          head=newNode;
          tail=newNode;
        }else{
          tail?.next=newNode as Node?;
          tail=newNode;
        }

      }
      void Display(){

        if(head==null){
          print("no data");
        }else
        node?temp= head;
          while(head!=null){
            
          }
         
      }

      void main(){

      }
      }