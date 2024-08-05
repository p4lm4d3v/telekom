enum ThreadCount {
  six(6),
  twelve(12),
  twentyFour(24);

  final int _n;
  const ThreadCount(this._n);

  int get() {
    return _n;
  }
}
