class Solution {
  int maxArea(List<int> height) {
    int left = 0;                      // 왼쪽 포인터
    int right = height.length - 1;    // 오른쪽 포인터
    int maxArea = 0;                  // 최대 용량 저장 변수

    // (4) 두 포인터가 엇갈릴 때까지 반복
    while (left < right) {
      int width = right - left;                                            // 너비 계산
      int minHeight = height[left] < height[right] ? height[left] : height[right]; // 낮은 막대 높이
      int area = minHeight * width;                                        // 현재 용량

      if (area > maxArea) {                                                // 최대값 갱신
        maxArea = area;
      }

      // 더 낮은 쪽 포인터를 안쪽으로 한 칸 이동
      if (height[left] < height[right]) {
        left++;
      } else {
        right--;
      }
    }

    return maxArea;  // (5) 최종 답 반환
  }
}
