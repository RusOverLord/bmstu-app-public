import 'package:firebase_messaging/firebase_messaging.dart';

abstract class IFirebaseRemoteDataSource {
  Future<String> get firebaseToken;
}

class FirebaseRemoteDataSource implements IFirebaseRemoteDataSource {
  const FirebaseRemoteDataSource();

  @override
  Future<String> get firebaseToken async => (await FirebaseMessaging.instance.getToken())!;
}

class FirebaseRemoteDataSourceFake implements IFirebaseRemoteDataSource {
  const FirebaseRemoteDataSourceFake();

  @override
  Future<String> get firebaseToken async => throw UnimplementedError();
}
