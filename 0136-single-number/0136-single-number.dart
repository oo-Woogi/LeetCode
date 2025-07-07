class Solution {
  int singleNumber(List<int> nums) {
    int result = 0; // 결과 저장용 변수 (초기값 0)

    for (int num in nums) {
        result ^= num; // 현재 숫자와 XOR 연산 (짝수 개는 0으로 사라짐)
    }

    return result; // 남아있는 숫자 반환
  }

  void main() {
    print(singleNumber([2, 2, 1]));
    print(singleNumber([4, 1, 2, 1, 2]));
    print(singleNumber([1]));
  }
}