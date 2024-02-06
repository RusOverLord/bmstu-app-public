import 'dart:async';

import 'package:bbmstu_app/src/constants/platform.dart';
import 'package:bbmstu_app/src/core/fire_base/data/firebase_local_data_source.dart';
import 'package:bbmstu_app/src/core/fire_base/data/firebase_remote_data_source.dart';
import 'package:bbmstu_app/src/core/fire_base/data/firebase_repository.dart';
import 'package:bbmstu_app/src/core/fire_base/domain/firebase.dart';
import 'package:bbmstu_app/src/core/settings/settings.dart';
import 'package:firebase_core/firebase_core.dart' as core;
import 'package:firebase_messaging/firebase_messaging.dart';

FutureOr<IFirebase> initFirebase(ISettingsLocalDataSource settings) async {
  await platform.mapDeviceOrNull(
    mobile: _initGoogleFirebase,
  );

  final remote = platform.mapDevice(
    mobile: () => const FirebaseRemoteDataSource(),
    desktop: () => const FirebaseRemoteDataSourceFake(),
  );

  return Firebase(
    repository: FirebaseRepository(
      remote: remote,
      local: FirebaseLocalDataSource(
        settings: settings,
      ),
    ),
  );
}

Future<void> _initGoogleFirebase() async {
  await core.Firebase.initializeApp();
  await FirebaseMessaging.instance.requestPermission(
    alert: true,
    announcement: false,
    badge: true,
    carPlay: false,
    criticalAlert: false,
    provisional: false,
    sound: true,
  );
}
