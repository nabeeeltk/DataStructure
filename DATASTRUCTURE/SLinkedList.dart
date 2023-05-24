
class Node{
  dynamic data;
   Node? next; 

   Node(this.data);
}


class linkedlist {

Node? head; 
Node? tail;

    linkedlist() {
      head=null;
      tail=null;
    }
    void addData(dynamic data){
      Node newNode =Node(data);

       if(head==null){
        head=newNode;
       }else{
         tail?.next  = newNode;
            tail=newNode;  
       }

    }
        void display(){
         if(head==null){
          print("empty");
          return;
         }
         Node? temp = head;

         while(temp!=null){
          print(temp.data);
          temp= temp.next! ;
         }


        }

}

void main(List<String> args) {
linkedlist list=new linkedlist();
list.addData(5);
list.addData(140);
list.addData(50);
list.display();

}
// ignore: unused_import

// class node{

//   dynamic data;
//   node?next;
//   node(this.data);

// }
// class linkedlist {

//   node? head;
//   node? tail;

//   linkedlist(){
//     head=null;
//     tail=null;
//   }

//   void addData(dynamic data){

//     node newNode=node(data);

//     if(head==null){
//       head=newNode;
//       tail=newNode;
//     }else{
//       tail?.next=newNode;
//       tail=newNode;
//     }
//   }

//   void insertAfter(int nextTo ,int data ){
//     node? temp=head;
//     node newNode=node(data);
//     while(temp!=null&& temp.data!=nextTo){
//       temp=temp.next;
//     }
//     if(temp==null){
//       return;
//     }
//     if(temp==tail){
//       temp.next=newNode;
//       tail=newNode;
//       return;
//     }
//     newNode.next=temp.next;
//     temp.next=newNode;

//   }
  // void delete( int data){
  //   node? temp= head,preve =null;
  //   if(temp!=null&& temp.data==data){
  //     head=temp.next;
  //     return;
  //   }
  //   while(temp!=null&&temp.data!=data){
  //     preve=temp;
  //     temp=temp.next;
  //   }
  //   if(temp==null){
  //       return;
  //   }
  //     if(temp==tail){
  //       preve=tail;
  //       tail?.next==null;
  //     }
  //   preve?.next=temp.next;
  // }

  

//   void display(){
//    int sum=0;
//     if(head==null){
//       print("empty");

//     }else{
//       node? Temp= head;
//       while(Temp!=null){

        
//         print(Temp.data);
//         Temp=Temp.next;
//       }
//     }
//   }


// }
// void main() {
//    linkedlist list=linkedlist();
//    list.addData(5);
//    list.addData(10);
//    list.addData(10);
//    list.addData(15);
//    list.insertAfter(15, 20);

//   //  
//   // 
//   // 
  
//   // list.delete(10);
//    list.display();
  

