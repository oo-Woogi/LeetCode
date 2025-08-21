class Solution {
  int romanToInt(String s) {
  final Map<String, int> val = {
    'I': 1,
    'V': 5,
    'X': 10,
    'L': 50,
    'C': 100,
    'D': 500,
    'M': 1000,
  };

  int ans = 0;

  for (int i = 0; i < s.length; i++) {
    // 현재 문자 값
    final int curr = val[s[i]]!;
    // 다음 문자 값 (없으면 0으로)
    final int next = (i + 1 < s.length) ? val[s[i + 1]]! : 0;

    // 뺄셈 규칙: 현재 < 다음 이면 현재값을 빼기
    if (curr < next) {
      ans -= curr;
    } else {
      ans += curr;
    }
  }

  return ans;  
  }
}