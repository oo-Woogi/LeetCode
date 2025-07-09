class Solution { 
  int majorityElement(List<int> nums) { // majorityElement 함수 : 배열에서 과반수([n/2]번 초과 등장) 요소를 찾아서 변환
    int count = 0; // 현재 후보의 등장 횟수 카운트 (시작은 0)
    int candidate = nums[0]; // 다수 후보, 일단 첫 번째 값으로 초기화

    // 배열을 순회하며 후보를 찾아감
    for(int num in nums) {
        if(count == 0) {
            candidate = num; // count가 0이면 현재 숫자를 새로운 후보로 지정
        }
        count += (num == candidate) ? 1 : -1; // 후보와 같으면 +1, 다르면 -1
    }
    return candidate; // 마지막에 남은 candidate가 다수 요소 // candidate : 현재 "과반수일 것 같은 후보"

  void main() {
    print(majorityElement([3, 2, 3]));
    print(majorityElement([2, 2, 1, 1, 1, 2, 2]));
        }
    }
}