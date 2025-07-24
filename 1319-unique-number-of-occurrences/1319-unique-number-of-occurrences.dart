class Solution {
  bool uniqueOccurrences(List<int> arr) {
  // 각 원소의 빈도를 저장할 Map 준비
  final Map<int, int> countMap = {};

  // 배열 순회하며 빈도 카운트
  for (final num in arr) {
    countMap[num] = (countMap[num] ?? 0) + 1; // 없으면 0에서 +1
  }

  // 빈도 값들만 추출
  final List<int> freqs = countMap.values.toList();

  // Set으로 변환해 중복 제거 후 길이 비교
  final Set<int> freqSet = freqs.toSet();

  // 길이가 같다면 모두 고유 → true, 아니면 false
  return freqs.length == freqSet.length;
}
  }