class Solution {
  void rotate(List<int> nums, int k) {
    // 배열의 길이를 n에 저장
    int n = nums.length;
    // 배열이 비어 있으면 회전할 필요 없으니 종료
    if (n == 0) return;

    // k가 n보다 크면 n으로 나눈 나머지로 줄이기
    k %= n;
    // k가 0이면 회전할 필요 없으니 종료
    if (k == 0) return;

    // 1) 배열 전체를 뒤집어서 [a,b,c,d,e] → [e,d,c,b,a]
    _reverse(nums, 0, n - 1);
    // 2) 앞에서부터 k개만 뒤집어서 [e,d | c,b,a] → [d,e | c,b,a]
    _reverse(nums, 0, k - 1);
    // 3) 나머지 요소(n-k개)를 뒤집어서 [d,e | c,b,a] → [d,e | a,b,c]
    _reverse(nums, k, n - 1);
  }

  // arr의 start 인덱스부터 end 인덱스까지를 제자리에서 뒤집는 헬퍼 메서드
  void _reverse(List<int> arr, int start, int end) {
    // start가 end보다 작을 동안 스왑 반복
    while (start < end) {
      // 양 끝 요소를 교환하기 위해 임시 변수에 arr[start] 저장
      int tmp = arr[start];
      // 뒤쪽 요소를 앞쪽으로 복사
      arr[start] = arr[end];
      // 임시 변수에 담아둔 앞쪽 요소를 뒤로 복사
      arr[end] = tmp;
      // 다음 쌍을 위해 start는 오른쪽으로, end는 왼쪽으로 이동
      start++;
      end--;
    }
  }
}
