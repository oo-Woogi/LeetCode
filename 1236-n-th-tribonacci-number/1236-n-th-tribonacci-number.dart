class Solution {
  int tribonacci(int n) {
    if (n == 0) return 0; // 0번째이면 0 반환
    if (n == 1 || n == 2) return 1; // 1번째 또는 2번째이면 1 반환

    // a, b, c에 0, 1, 1을 저장 (이전 3개 값을 부여함)
    int a = 0; // T(n-3)
    int b = 1; // T(n-2)
    int c = 1; // T(n-1)
    int result = 0; // 정답을 담을 변수

    // 3번째부터 n번째까지 반복해서 계산
    for (int i = 3; i <= n; i++) {
        result = a + b + c; // 점화식 이용 : 이전 3개 값을 더해서 새로운 값 계산
        a = b; // a에 b값 대입
        b = c; // b에 c값 대입
        c = result; // c에 새로 계산한 값 대입
    }

    return result; // n번째 트리보나치 값 반환
  }
}