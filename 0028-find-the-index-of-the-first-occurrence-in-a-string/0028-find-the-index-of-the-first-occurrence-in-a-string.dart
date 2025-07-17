class Solution {
  int strStr(String haystack, String needle) {
    int n = haystack.length; // 검색 대상 문자열의 길이
    int m = needle.length; // 찾을 문자열의 길이

    for (int i = 0; i <= n - m; i++) { // haystack에서 needle이 시작될 수 있는 모든 인덱스를 순회
        bool matched = true; // 이 위치에서 needle과 완전히 일치하는지 표시하는 플래그
        for (int j = 0; j < m; j++) {
            if (haystack[i +j] != needle[j]){ // haystack의 (i+j)번째 문자와 needle의 j번째 문자가 다를 시
                matched = false; // 일치하지 않음을 표기
                break; // 종료
            }
        }
        if (matched){ // 만약 루프에서 mismatch가 없으면
            return i; // 최초 일치 위치 i를 반환
        }
    }
     return -1; // 모든 위치 확인 후 일치하는 부분이 없을 시 -1 반환
  }
}