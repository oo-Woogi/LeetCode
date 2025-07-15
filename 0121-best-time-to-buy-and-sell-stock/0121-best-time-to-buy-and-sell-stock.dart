class Solution {
int maxProfit(List<int> prices) {
  int minPrice = prices[0];   // 지금까지의 최저가 (첫날로 초기화)
  int maxProfit = 0;          // 최대 이익 (초기값 0)


  for (int i = 1; i < prices.length; i++) {   // 두 번째 날부터 끝까지 반복
    int profit = prices[i] - minPrice;    // 오늘 팔았다면 얻는 이익

    //  최대 이익 갱신
    if (profit > maxProfit) {
      maxProfit = profit;
    }

    // 새로운 최저가 발견 시, 갱신
    if (prices[i] < minPrice) {
      minPrice = prices[i];
    }
  }
  return maxProfit;  // 최종 최대 이익 반환
    }
}