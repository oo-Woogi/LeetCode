class Solution {
  bool containsNearbyDuplicate(List<int> nums, int k) {
     Map<int, int> numIndexMap = {};

  for (int i = 0; i < nums.length; i++) {
    int num = nums[i];

    if (numIndexMap.containsKey(num)) {
      int prevIndex = numIndexMap[num]!;
      if ((i - prevIndex).abs() <= k) {
        return true;
      }
    }

    numIndexMap[num] = i; // 항상 현재 인덱스로 갱신
  }

  return false;
  }
}