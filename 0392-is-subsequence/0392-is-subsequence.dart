class Solution {
  bool isSubsequence(String s, String t) {
    int i = 0; // s의 현재 인덱스
    int j = 0; // t의 현재 인덱스

    // t 전체를 순회하며 s의 문자를 차례대로 서칭
    while(i < s.length && j < t.length) {
        if(s[i] == t[j]) {
            // 일치하면 s쪽 포인터를 옮겨 다음 문자 매칭 준비
            i++;
        }
        // 항상 t 쪽 포인터는 옮기며 탐색
        j++;
    }
    // s의 모든 문자를 찾았으면 종료
    return i == s.length;
  }
}