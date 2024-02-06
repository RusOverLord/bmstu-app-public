import 'firebase_local_data_source.dart';
import 'firebase_remote_data_source.dart';

abstract class IFirebaseRepository {
  Future<String> get firebaseToken;
}

class FirebaseRepository implements IFirebaseRepository {
  final IFirebaseLocalDataSource _local;
  final IFirebaseRemoteDataSource _remote;

  FirebaseRepository({
    required IFirebaseLocalDataSource local,
    required IFirebaseRemoteDataSource remote,
  })  : _local = local,
        _remote = remote;

  @override
  Future<String> get firebaseToken async {
    try {
      return await _remote.firebaseToken;
    } catch (_) {
      return await _local.firebaseToken;
    }
  }
}
