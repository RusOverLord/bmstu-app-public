import 'package:bbmstu_app/src/core/settings/data/setting.dart';
import 'package:bbmstu_app/src/core/settings/settings.dart';
import 'package:uuid/uuid.dart';

abstract class IFirebaseLocalDataSource {
  Future<String> get firebaseToken;
}

class FirebaseLocalDataSource implements IFirebaseLocalDataSource {
  final ISettingsLocalDataSource _settings;

  late final _firebaseToken = SettingString(_settings, _firebaseTokenKey);

  FirebaseLocalDataSource({
    required ISettingsLocalDataSource settings,
  }) : _settings = settings;

  @override
  Future<String> get firebaseToken async {
    var token = _firebaseToken.value;

    if (token == null) {
      token = _customFBT();
      await _setFirebaseToken(token);
    }

    return token;
  }

  Future<void> _setFirebaseToken(String value) => _firebaseToken.updateValue(value);

  String _customFBT() {
    const uuid = Uuid();
    String token = 'bbcustomfbt';

    while (token.length < 60) {
      token += uuid.v1().replaceAll('-', '');
    }

    return token.substring(0, 60);
  }
}

const _firebaseTokenKey = 'firebase_token';
