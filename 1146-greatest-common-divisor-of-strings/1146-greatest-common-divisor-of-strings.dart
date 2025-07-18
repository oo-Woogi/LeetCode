class Solution {
  int _gcd(int a, int b) { // 두 정수 a, b의 최대 공약수를 계산하는 헬퍼 메서드
    while (b != 0) { // b가 0이 아닐 동안 반복
        int r = a % b; //  a를 b로 나는 나머지를 r에 저장
        a = b; // a에 이전의 b값을 할당
        b = r; // b에 나머지 값을 할당
    }
    return a; // b가 0이 되었을 때 a가 GCD이므로 반환
  }


  String gcdOfStrings(String str1, String str2) { // 두 문자열의 GCD 문자열을 구하는 메서드
    if (str1 + str2 != str2 + str1) { // str1+str2와 str2+str1이 다르면
        return ""; // 공통 반복 구조가 아니므로 빈 문자열 반환
 }
        int g = _gcd(str1.length, str2.length); // str1과 str2 길이의 GCD를 계산하여 g에 저장

        return str1.substring(0, g); // str1의 처음 g글자만큼 잘라서 최종 GCD 문자열로 반환
  }
}