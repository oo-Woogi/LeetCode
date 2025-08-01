class Solution {
  int removeDuplicates(List<int> nums) {
  if (nums.isEmpty) return 0;

  int write = 1; // 처음 숫자는 무조건 남기니까 1부터 start
  int count = 1; // 지금 숫자가 몇 번 연속 나왔는지 카운트

  for (int i = 1; i < nums.length; i++) { // 1번째 인덱스부터 끝까지 반복
    if (nums[i] == nums[i-1]) {
        count++; // 이전 숫자랑 같으면 count 증가
    } else {
        count = 1; // 이전 숫자와 다르면 count 1로 초기화
    }

    if (count <= 2) { // 중복된 요소는 2번까지 남을 수 있는 조건이 있으니 count가 2이하인 경우만 남김
        nums[write] = nums[i];
        write++;
    }
  }
  return write; // 유효한 남은 숫자 길이
  }
}