class Solution {
  int largestAltitude(List<int> gain) {
    int currentAltitude = 0; // 현재 고도
    int maxAltitude = 0;     // 가장 높은 고도

    for (int g in gain) {
      currentAltitude += g; // 누적 고도 업데이트
      if (currentAltitude > maxAltitude) {
        maxAltitude = currentAltitude; // 최고 고도 갱신
      }
    }

    return maxAltitude;
  }
}