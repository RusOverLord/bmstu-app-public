import 'dart:async';

import 'package:bbmstu_app/src/core/fire_base/data/firebase_repository.dart';
import 'package:bbmstu_app/src/core/logger.dart';

abstract class IFirebase {
  Future<String> get token;
}

class Firebase implements IFirebase {
  final IFirebaseRepository _repository;
  String? _token;

  Firebase({
    required IFirebaseRepository repository,
  }) : _repository = repository;

  @override
  Future<String> get token async {
    _token ??= await _repository.firebaseToken;
    l.i('FBT: $_token');
    return _token!;
  }
}
