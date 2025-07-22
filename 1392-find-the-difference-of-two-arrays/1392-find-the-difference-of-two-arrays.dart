class Solution {
  List<List<int>> findDifference(List<int> nums1, List<int> nums2) {
      // 각 배열을 Set으로 변환하여 중복 제거
      Set<int> set1 = nums1.toSet(); 
      Set<int> set2 = nums2.toSet();

      // nums1에는 있고 nums2에 없는 요소들
      List<int> onlyInNums1 = set1.difference(set2).toList();
      // nums2에는 있고 nums1에 없는 요소들
      List<int> onlyInNums2 = set2.difference(set1).toList();

      return [onlyInNums1, onlyInNums2];
  }
}