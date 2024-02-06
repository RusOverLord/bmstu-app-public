import 'dart:async';
import 'package:bbmstu_app/src/constants/platform.dart';
import 'package:bbmstu_app/src/core/remote_settings/data/remote_settings_repository.dart';

FutureOr<IRemoteSettingsRepository> initRemoteSettings() async {
  return platform.mapDevice(
    mobile: () async => RemoteSettingsRepository(
      remoteConfig: await initRemoteConfig(),
    ),
    desktop: () => const RemoteSettingsRepositoryDesktop(),
  );
}
