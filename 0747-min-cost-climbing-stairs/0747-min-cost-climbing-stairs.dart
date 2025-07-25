class Solution {
  int minCostClimbingStairs(List<int> cost) { // 계단 비용 리스트 cost를 받아 최소 비용 int 반환
    int n = cost.length; // 계단 총 개수를 n에 저장
    
    if(n == 0) return 0; // 계단 하나도 없을 시 0 반환
    if(n == 1) return cost[0]; // 계단 하나면 그 게단 비용만 내고 종료

    List<int> dp = List.filled(n, 0); // n크기의 dp 리스트 0으로 초기화
    dp[0] = cost[0]; // 첫 번째 계단까지 오는 최소 비용 cost[0]
    dp[1] = cost[1]; // 첫 번째 계단까지 오는 최소 비용 cost[1]

    for(int i = 2; i < n; i++) { // 세 번째 계단부터 마지막 계단까지 반복
        dp[i] = cost[i] + min(dp[i-1], dp[i-2]); // i번 단계까지 오는 최소 비용 = cost[1] + (이전 두 계단 중 작은 비용)
}
        return min(dp[n-1], dp[n-2]); // 마지막 계단 또는 그 전 계단에서 정상에 도달하는 최소 비용 반환
    
  }
}