class Solution {
  int pivotIndex(List<int> nums) {
    int totalSum = nums.reduce((a,b) => a + b); // 전체 합을 미리 구해둠
    int leftSum = 0; // 왼쪽 합을 0으로 초기화

    for (int i =0; i < nums.length; i++) { // 배열을 순회하며 검사
        int rightSum = totalSum - leftSum - nums[i]; 
        // 현재 원소 nums[i]를 제외한 오른쪽 합은 totalsum -leftSum - nums[i]

        if (leftSum == rightSum) { // 왼쪽 합과 오른쪽 합이 같으면 i가 피벗 인덱스
            return i;
        }
        leftSum += nums[i]; // 다음 인덱스를 위해 leftSum에 현재 값을 더함
    }
    return -1; // 피벗 인덱스가 없으면 -1 반환
  }
}