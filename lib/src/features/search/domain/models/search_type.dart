enum SearchType {
  step,
  free,
}

extension SearchTypeCompare on SearchType {
  bool get isStep => this == SearchType.step;

  bool get isFree => this == SearchType.free;
}
