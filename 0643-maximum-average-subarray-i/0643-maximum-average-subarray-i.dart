class Solution {
double findMaxAverage(List<int> nums, int k) {
  int n = nums.length;
  // 초기 윈도우 합 계산: nums[0] ~ nums[k-1]
  double windowSum = 0;
  for (int i = 0; i < k; i++) {
    windowSum += nums[i];
  }
  // 최대 합을 초기 윈도우 합으로 설정
  double maxSum = windowSum;

  // 인덱스 k부터 끝까지 한 칸씩 슬라이딩
  for (int i = k; i < n; i++) {
    // 윈도우에 새로 들어오는 값 더하고, 나가는 값 빼기
    windowSum += nums[i] - nums[i - k];
    // 최대 합 갱신
    if (windowSum > maxSum) {
      maxSum = windowSum;
    }
  }

  // 평균 계산 및 소수점 다섯째 자리까지 반올림
  double avg = maxSum / k;
  return double.parse(avg.toStringAsFixed(5));
    }
}