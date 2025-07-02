class Solution {
  int lengthOfLastWord(String s) {
    s= s.trim();
    List<String> words = s.split(' ');
    
    words = words.where((word) => word.isNotEmpty).toList();

    if (words.isNotEmpty) {
        return words.last.length;
    } else {
        return 0;
    }
  }
}