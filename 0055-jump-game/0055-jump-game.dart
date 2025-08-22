class Solution {
  bool canJump(List<int> nums) {
    int maxReach = 0; // 지금까지 도달 가능한 최원거리

  for (int i = 0; i < nums.length; i++) {
    // i 자체가 도달 불가능하면 더 진행할 수 없음
    if (i > maxReach) return false;

    // i에서 점프해서 갈 수 있는 최원거리로 갱신
    final int candidate = i + nums[i];
    if (candidate > maxReach) maxReach = candidate;

    // 마지막 인덱스에 이미 닿거나 넘겼다면 성공
    if (maxReach >= nums.length - 1) return true;
  }

  // 루프를 무사히 통과했다면 끝에 도달 가능
  return true;
  }
}