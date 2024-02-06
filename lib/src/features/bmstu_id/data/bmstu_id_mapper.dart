import 'package:bbmstu_app/src/features/bmstu_id/domain/model/bmstu_id.dart';
import 'package:remote_api/remote_api.dart';

extension InternalAppApiV2BaumanIdGetBaumanIDRespMapper on InternalAppApiV2BaumanIdGetBaumanIDResp {
  BmstuId toModel() {
    final qrString = this.qrString ?? '';
    final accessIsAllowed = this.accessIsAllowed ?? false;
    final expiredAt = this.expiredAt;

    if (qrString.isNotEmpty && expiredAt != null) {
      return BmstuId.data(
        qrString: qrString,
        accessIsAllowed: accessIsAllowed,
        expiredAt: DateTime.parse(expiredAt),
      );
    }

    return const BmstuId.empty();
  }
}
