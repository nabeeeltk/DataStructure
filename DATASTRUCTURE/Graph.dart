class Node {
  late final dynamic data;
  final List<Node> neighbors;

  Node(this.data) : neighbors = [];

  void addNeighbor(Node node) {
    neighbors.add(node);
  }
}

void main() {
  final node1 = Node(1);
  final node2 = Node(2);
  final node3 = Node(3);
  final node4 = Node(4);

  node1.addNeighbor(node2);
  node1.addNeighbor(node3);
  node2.addNeighbor(node3);
  node3.addNeighbor(node4);
  
  print('Node 1: ${node1.data}');
  for (final neighbor in node1.neighbors) {
    print('Neighbor: ${neighbor.data}');
  }
}
