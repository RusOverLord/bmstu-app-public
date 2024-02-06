abstract class Failure {
  final Failure? parent;

  const Failure([this.parent]);

  bool hasParent<T>() {
    final parent = this.parent;

    if (parent == null) {
      return false;
    }

    if (parent is T) {
      return true;
    }

    return parent.hasParent<T>();
  }
}

// General failures
class ServerFailure extends Failure {
  const ServerFailure([Failure? parent]) : super(parent);
}

class CacheFailure extends Failure {
  const CacheFailure([Failure? parent]) : super(parent);
}

class UnknownFailure extends Failure {
  const UnknownFailure([Failure? parent]) : super(parent);
}
