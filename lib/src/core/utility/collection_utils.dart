typedef _ItemMapper<T1, T2> = T2 Function(T1 value);

Iterable<T2> intermediateInsertion<T1, T2>({
  required Iterable<T1> iterable,
  required _ItemMapper<T1, T2> itemMapper,
  required _ItemMapper<T1, T2> insertionMapper,
}) sync* {
  final iterator = iterable.iterator..moveNext();
  var current = iterator.current;

  while (iterator.moveNext()) {
    yield itemMapper(current);
    yield insertionMapper(current);
    current = iterator.current;
  }

  yield itemMapper(current);
}
