class Solution {
  bool isPalindrome(String s) {
    // 1. 소문자, 숫자만 남기고 나머지 제거
    String filtered = s
        .toLowerCase()
        .replaceAll(RegExp(r'[^a-z0-9]'), '');

    // 2. 투포인터로 팰린드롬 체크
    int left = 0;
    int right = filtered.length - 1;
    while (left < right) {
      if (filtered[left] != filtered[right]) {
        return false; // 한 글자라도 다르면 팰린드롬 아님
      }
      left++;
      right--;
    }
    return true; // 모두 통과하면 팰린드롬
  }
}