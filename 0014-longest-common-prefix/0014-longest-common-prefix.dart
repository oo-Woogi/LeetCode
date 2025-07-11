class Solution {
  String longestCommonPrefix(List<String> strs) { // 모든 문자열의 가장 긴 공통 접두사를 구하는 함수
    
    if (strs.isEmpty) return ""; // 예외 처리 : 빈 배열이면 빈 문자열 반환

    String prefix = strs[0]; // 첫 번째 문자열을 기준 접두사(prefix)로 잡기

    for(int i = 1; i < strs.length; i++) { // 두 번째 문자열부터 끝까지 반복해서 비교
        while (!strs[i].startsWith(prefix)) { // 현재 문자열이 prefix로 시작하지 않으면, prefix를 한 글자씩 줄임
        if (prefix.isEmpty) return ""; // prefix가 완전히 없어지면 공통 접두사 없음 (빈 문자열 반환)
        prefix = prefix.substring(0, prefix.length -1); // prefix 끝에서 한 글자 제거
    }
  }

  return prefix; // 비교 후 남은 prefix 반환
    }
}