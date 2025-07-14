class Solution {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
  int i = m - 1;           // nums1의 유효 구간 마지막 인덱스
  int j = n - 1;           // nums2의 마지막 인덱스
  int k = m + n - 1;       // nums1 전체 마지막 인덱스

  // 두 배열을 뒤에서부터 비교하여 큰 값을 nums1 뒤에 삽입
  while (i >= 0 && j >= 0) {
    if (nums1[i] > nums2[j]) {
      nums1[k] = nums1[i];
      i--;
    } else {
      nums1[k] = nums2[j];
      j--;
    }
    k--;
  }

  // nums2에 남은 요소가 있으면 앞쪽에 채움 (nums1에 남은 값은 이미 제자리에 있음)
  while (j >= 0) {
    nums1[k] = nums2[j];
    j--;
    k--;
        }
    }
}