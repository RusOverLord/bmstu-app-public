import 'package:rxdart/rxdart.dart';

extension WhereNotNullStreamExtension<T> on Stream<T?> {
  Stream<T> whereNotNull() => whereType<T>();
}
