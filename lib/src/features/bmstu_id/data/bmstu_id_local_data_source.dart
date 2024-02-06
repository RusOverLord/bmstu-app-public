import 'package:bbmstu_app/src/core/settings/data/setting.dart';
import 'package:bbmstu_app/src/core/settings/settings.dart';
import 'package:bbmstu_app/src/features/bmstu_id/domain/model/models.dart';

abstract class IBmstuIdLocalDataSource {
  ISetting<bool, bool> get firstOpen;

  BmstuId get bmstuId;

  Future<void> updateBmstuId(BmstuId bmstuId);
}

class BmstuIdLocalDataSource extends SettingsAccessor implements IBmstuIdLocalDataSource {
  @override
  late final firstOpen = $BoolDefault(_firstOpenKey, _firstOpenDefault);

  late final _qrString = $StringDefault(_qrStringKey, _qrStringDefault);

  late final _accessIsAllowed = $BoolDefault(_accessIsAllowedKey, _accessIsAllowedDefault);

  late final _expiredAt = $String(expiredAtKey);

  BmstuIdLocalDataSource({
    required ISettingsLocalDataSource settings,
  }) : super(settings);

  @override
  BmstuId get bmstuId {
    final qrString = _qrString.value;

    if (qrString.isEmpty) {
      return const BmstuId.empty();
    } else {
      final expiredAt = _expiredAt.value;
      return BmstuId.data(
        qrString: qrString,
        accessIsAllowed: _accessIsAllowed.value,
        expiredAt: expiredAt == null ? null : DateTime.parse(expiredAt),
      );
    }
  }

  @override
  Future<void> updateBmstuId(BmstuId bmstuId) {
    return bmstuId.map(
      empty: (_) => _deleteBmstuId(),
      data: _updateBmstuIdData,
    );
  }

  Future<void> _deleteBmstuId() async {
    await _qrString.delete();
    await _accessIsAllowed.delete();
    await _expiredAt.delete();
  }

  Future<void> _updateBmstuIdData(BmstuIdData bmstuId) async {
    await _qrString.updateValue(bmstuId.qrString);
    await _accessIsAllowed.updateValue(bmstuId.accessIsAllowed);
    final expiredAt = bmstuId.expiredAt;

    if (expiredAt != null) {
      await _expiredAt.updateValue(expiredAt.toString());
    } else {
      await _expiredAt.delete();
    }
  }
}

const _covidCertificatePrefix = 'covid_certificate_';
const _firstOpenKey = _covidCertificatePrefix + 'first_open';
const _firstOpenDefault = true;
const _qrStringKey = _covidCertificatePrefix + 'qr_string';
const _qrStringDefault = '';
const _accessIsAllowedKey = _covidCertificatePrefix + 'access_is_allowed';
const _accessIsAllowedDefault = false;
const expiredAtKey = _covidCertificatePrefix + 'expired_at';
