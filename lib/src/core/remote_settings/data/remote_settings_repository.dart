import 'dart:async';
import 'dart:convert';

import 'package:bbmstu_app/src/core/remote_settings/domain/end_of_support.dart';
import 'package:bbmstu_app/src/core/utility/notifier_subscription.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'remote_settings_repository.freezed.dart';

@freezed
class RemoteSettings with _$RemoteSettings {
  const RemoteSettings._();

  const factory RemoteSettings({
    required bool showQrButtonOnMain,
    required String bmstuIdTitle,
    required String vkGroupUrl,
    required EndOfSupport endOfSupport,
  }) = _RemoteSettings;
}

abstract class IRemoteSettingsRepository {
  RemoteSettings fetch();

  Stream<RemoteSettings> watch();
}

class RemoteSettingsRepository implements IRemoteSettingsRepository {
  final RemoteConfig _remoteConfig;

  RemoteSettingsRepository({
    required RemoteConfig remoteConfig,
  }) : _remoteConfig = remoteConfig;

  @override
  RemoteSettings fetch() => _remoteConfig.getRemoteSettings();

  @override
  Stream<RemoteSettings> watch() {
    late final NotifierSubscription subscription;
    late final StreamController<RemoteSettings> controller;

    controller = StreamController<RemoteSettings>(
      onListen: () {
        subscription = _remoteConfig.listen(
          (notifier) => controller.add(notifier.getRemoteSettings()),
        );
      },
      onCancel: () {
        subscription.cancel();
        controller.close();
      },
    );

    return controller.stream;
  }
}

class RemoteSettingsRepositoryDesktop implements IRemoteSettingsRepository {
  const RemoteSettingsRepositoryDesktop();

  @override
  RemoteSettings fetch() => _remoteSettingsDefault;

  @override
  Stream<RemoteSettings> watch() => const Stream.empty();
}

Future<RemoteConfig> initRemoteConfig() async {
  final remoteConfig = RemoteConfig.instance;
  await remoteConfig.setDefaults(_defaults);
  await remoteConfig.setConfigSettings(RemoteConfigSettings(
    fetchTimeout: const Duration(seconds: 10),
    minimumFetchInterval: const Duration(minutes: 1),
  ));

  try {
    await remoteConfig.fetchAndActivate();
  } catch (_) {}

  return remoteConfig;
}

extension on RemoteConfig {
  bool get showQrButtonOnMain => getBool(_showQrBtnOnMainKey);

  String get bmstuIdTitle => getString(_bmstuIdTitleKey);

  String get vkGroupUrl => getString(_vkGroupUrlKey);

  EndOfSupport get endOfSupport {
    final jsonString = getString(_endOfSupportKey);

    if (jsonString.isEmpty) {
      return _remoteSettingsDefault.endOfSupport;
    }

    return EndOfSupport.fromJson(jsonDecode(jsonString));
  }

  RemoteSettings getRemoteSettings() {
    return RemoteSettings(
      showQrButtonOnMain: showQrButtonOnMain,
      bmstuIdTitle: bmstuIdTitle,
      vkGroupUrl: vkGroupUrl,
      endOfSupport: endOfSupport,
    );
  }
}

const _remoteSettingsDefault = RemoteSettings(
  showQrButtonOnMain: false,
  bmstuIdTitle: 'БауманID',
  vkGroupUrl: 'https://vk.com/bitop_bmstu',
  endOfSupport: EndOfSupport(
    title: '',
    body: '',
    url: '',
  ),
);
final _defaults = <String, dynamic>{
  _showQrBtnOnMainKey: _remoteSettingsDefault.showQrButtonOnMain,
  _bmstuIdTitleKey: _remoteSettingsDefault.bmstuIdTitle,
  _vkGroupUrlKey: _remoteSettingsDefault.vkGroupUrl,
  _endOfSupportKey: jsonEncode(_remoteSettingsDefault.endOfSupport.toJson()),
};
const _showQrBtnOnMainKey = 'show_qr_btn_on_main';
const _bmstuIdTitleKey = 'covid_certificate_title'; // был переименован
const _vkGroupUrlKey = 'vk_group_url';
const _endOfSupportKey = 'end_of_support';
const _showCovidCertificateEmployeeKey = 'show_covid_certificate_employee'; // устарел
