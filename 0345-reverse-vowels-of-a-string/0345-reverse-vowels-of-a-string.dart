class Solution {
  String reverseVowels(String s) {
    final vowels = {'a','e','i','o','u','A','E','I','O','U'};

    List<String> chars = s.split('');

    int left = 0;
    int right = chars.length - 1;

    while (left < right) {
      if (!vowels.contains(chars[left])) {
        left++;
        continue;
      }
      if (!vowels.contains(chars[right])) {
        right--;
        continue;
      }

      String temp = chars[left];
      chars[left] = chars[right];
      chars[right] = temp;

      left++;
      right--;
    }

    return chars.join('');
  }
}
