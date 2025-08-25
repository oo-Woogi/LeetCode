/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? reverseList(ListNode? head) {
    ListNode? prev = null;   // 이전 노드를 가리키는 포인터
    ListNode? curr = head;   // 현재 노드 포인터

    while (curr != null) {
      ListNode? nextNode = curr.next; // 다음 노드 저장
      curr.next = prev;               // 현재 노드의 next를 역방향으로 변경
      prev = curr;                    // prev를 현재 노드로 이동
      curr = nextNode;                // curr을 다음 노드로 이동
    }

    return prev; // prev가 새로운 head가 됨
  }
}