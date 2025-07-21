class Solution {
  bool isHappy(int n) {
    if (n == 1) return true; // n이 1이면 행복한 수이므로 true 반환
    if (n == 4) return false; // n이 4이면 사이클에 빠진 것이므로 false 반환

    int sum = 0; // 자리 제곱합을 저장할 변수 초기화
    while(n > 0) { // n에 남은 자릿수가 있는 동안 반복
        int d = n % 10; // n의 마지막 자리 숫자를 d에 저장
        sum += d * d; // d의 제곱값을 sum에 더함
        n ~/= 10; // n을 10으로 나눈 몫으로 업데이트
    }
    return isHappy(sum); // 계산된 합으로 호출해 계속 검사
  }
}