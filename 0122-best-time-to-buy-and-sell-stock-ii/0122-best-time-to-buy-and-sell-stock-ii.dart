class Solution {
  int maxProfit(List<int> prices) {
    int totalProfit = 0;      // 누적 이익을 저장할 변수

    // 하루 전 가격과 비교, 오늘 가격이 더 높으면 차익을 취함
    for (int i = 1; i < prices.length; i++) {
      // 이전 날보다 오늘의 가격이 높다면
      if (prices[i] > prices[i - 1]) {
        // 그 차이만큼 바로 매도해서 이익 챙김
        totalProfit += prices[i] - prices[i - 1];
      }
    }

    return totalProfit;       // 모든 상승 구간의 차익 합산 결과 반환
  }
}