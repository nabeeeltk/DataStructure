

class TrieNode {
  bool isEndOfWord;
  late Map<String, TrieNode> children;

  TrieNode() : isEndOfWord = false {
    children = <String, TrieNode>{};
  }
}
class Trie{

  TrieNode?root;
  Trie(){
    root=TrieNode();

  }
  void insert (String word){
    TrieNode? currontnode=root;
    for(int i=0; i<word.length;i++){
      String character=word[i];
      if(!currontnode!.children.containsKey(character)){
        currontnode.children[character]=TrieNode();
      }
      currontnode=currontnode.children[character];
    }
     currontnode!.isEndOfWord=true;
  }
  bool search (String word ){
    TrieNode? currontnode=root;

    for( int i=0;i<word.length;i++){
      String  character=word[i];
      if(!currontnode!.children.containsKey(character)){
        return false;
      }
     currontnode= currontnode.children[character];
    }
    return currontnode!.isEndOfWord;
  }
  bool startsWith(String prefix){
    TrieNode? currontnode=root;

    for(int i=0;i<prefix.length;i++){
      String character =prefix[i];
      if(!currontnode!.children.containsKey(character)){
           return false;
      }
      currontnode=currontnode.children[character];
    }
    return true;
  }
}
void main(List<String> args) {
  Trie obj=Trie();
  obj.insert('nabeel');
  obj.insert('muhammed');
print(obj.search('nabeel'));
}
