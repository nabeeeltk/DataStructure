class node {
  dynamic data;
  node? next;
  node(this.data);
}

class linkedlist {
  node? head;
  node? tail;

  linkedlist() { 
    head = null;
    tail = null;
  }

  void adddata(dynamic data) {
    node newnode = node(data);

    if (head == null) {
      head = newnode;
      tail = newnode; 
    } else {
      tail!.next = newnode;
      tail = newnode;
    }
  }
  
  num getsum (){
      
      num sum=0;
      node? temp=head;
      while(temp!=null){
      sum +=temp.data;
      temp=temp.next;
         
       
      }

      return sum;
  }

  void display() { 
    if (head == null) {
      print('empty');
      return;
    }
    node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp=temp.next;

    }
  }
}

void main(List<String> args) {
  linkedlist list = linkedlist(); 
  list.adddata(10);
  list.adddata(20);
  list.adddata(30);
  list.adddata(40);
  list.adddata(50);
 num sum= list.getsum();
  print(sum);
  list.display();

}
