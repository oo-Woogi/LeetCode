class Solution {
  bool isIsomorphic(String s, String t) {
  // 길이가 다르면 바로 안되도록 함
  if (s.length != t.length) return false;
  // 아스키 코드 128칸으로 지정
  final lastS = List<int>.filled(128, 0);
  final lastT = List<int>.filled(128, 0);

  for (int i = 0; i < s.length; i++) {
    final sc = s.codeUnitAt(i); // s의 i번째 문자
    final tc = t.codeUnitAt(i); // t의 i번째 문자
    if (lastS[sc] != lastT[tc]) return false; // 직전 등장 위치가 다르면 불일치
    lastS[sc] = i + 1;
    lastT[tc] = i + 1;
  }
  return true;
    }
}