enum Stage {
  none,

  first,
  second,
  third,
  fourth,
  fifth,
  sixth,
  seventh,
  eighth,
  ninth,
  tenth;

  Stage prev() {
    int nextIdx = Stage.values.indexOf(this) - 1;
    if (nextIdx < 0) return this;
    return Stage.values.elementAt(nextIdx);
  }

  Stage next() {
    int idx = Stage.values.indexOf(this) + 1;
    if (idx == Stage.values.length) return this;
    return Stage.values.elementAt(idx);
  }

  int get() {
    return Stage.values.indexOf(this);
  }
}
