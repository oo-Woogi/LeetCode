class Solution {
  bool isAnagram(String s, String t) {
    if (s.length != t.length) return false;

    List<String> sList = s.split(''); // 문자열 s를 한 글자씩 나눠 리스트로 변환
    List<String> tList = t.split(''); // 문자열 t를 한 글자씩 나눠 리스트로 변환

    sList.sort(); // s.List 정렬
    tList.sort(); // t.List 정렬

    return sList.join() == tList.join(); // 정렬된 두 리스트를 문자열로 다시 합친 후 비교
  }

  void main() {
    print(isAnagram("anagram", "nagaram")); // "anagram" 과 "nagaram"의 문자 구성과 개수가 같음 => true
    print(isAnagram("rat", "car")); // "rat" 과 "car"의 개수는 같으나 구성 문자가 다름 => false
  }
}

// split('') : 문자열을 한 글자씩 나눈 리스트
// sort() : 글자들을 알파벳 순으로 정렬
// join() : 다시 문자열로 합쳐서 비교