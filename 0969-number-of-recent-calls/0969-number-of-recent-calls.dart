class RecentCounter {
  final List<int> _pings = [];  // 모든 ping 시간을 저장
  int _start = 0;                // 유효 구간 시작 인덱스

  RecentCounter();               // 빈 생성자

  /// t 시점의 호출을 기록하고,
  /// [t-3000, t] 구간 안의 호출 개수를 반환
  int ping(int t) {
    _pings.add(t);

    // _start가 가리키는 값이 구간 밖이면 한 칸씩 앞으로
    while (_start < _pings.length && _pings[_start] < t - 3000) {
      _start++;
    }

    // 전체 길이에서 잘린(무시된) 개수를 빼면 유효 호출 수
    return _pings.length - _start;
  }
}