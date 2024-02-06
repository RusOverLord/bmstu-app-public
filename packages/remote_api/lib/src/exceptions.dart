class ServerException {
  final int? statusCode;
  final Object? error;

  ServerException({
    this.statusCode,
    this.error,
  });

  @override
  String toString() {
    var string = '$runtimeType: ';
    final hasStatusCode = statusCode != null;
    final hasError = error != null;

    if (hasStatusCode) {
      string += 'statusCode: ${statusCode!}';
    }

    if (hasError) {
      if (hasStatusCode) {
        string += ', ';
      }

      string += 'error: ${error!}';
    }

    return string;
  }
}

class ServerException404 extends ServerException {
  @override
  final int? statusCode = 404;
  @override
  final Object? error;

  ServerException404({
    this.error,
  });
}
