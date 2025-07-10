class Solution {
  int removeDuplicates(List<int> nums) {
    if (nums.isEmpty) return 0; // 빈 배열이면 0 변환

    int i = 0; // 고유값을 기록할 위치를 가리키는 포인터
    for (int j = 1; j < nums.length; j++) { // 두 번째 요소부터 끝까지 순회
        if (nums[i] != nums[j]) { // 중복 아니면 고유값으로 처리
            i++; // 고유값 위치 포인터를 한 칸 이동
            nums[i] = nums[j]; // 해당 위치에 새 고유값 저장
        }
    }

    return i + 1; // 고유값의 개수 = 인덱스 i + 1

  }
}