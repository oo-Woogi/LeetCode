class Solution {
    List<bool> kidsWithCandies(List<int> candies, int extraCandies) {
  // 1) 현재 사탕 최댓값 찾기 (O(n))
  int maxCandy = candies[0];
  for (int c in candies) {
    if (c > maxCandy) maxCandy = c;
  }

  // 2) 각 아이가 extraCandies를 받았을 때 최댓값 이상인지 확인 (O(n))
  final result = <bool>[];
  for (int c in candies) {
    // c + extraCandies가 현재 최댓값 이상이면 true
    result.add(c + extraCandies >= maxCandy);
  }
  return result;
}
}