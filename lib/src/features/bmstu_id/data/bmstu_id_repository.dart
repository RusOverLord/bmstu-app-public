import 'package:bbmstu_app/src/features/bmstu_id/domain/model/models.dart';
import 'package:remote_api/remote_api.dart';
import 'bmstu_id_local_data_source.dart';
import 'bmstu_id_mapper.dart';

abstract class IBmstuIdRepository {
  bool get firstOpen;

  Future<void> completeFirstOpen();

  BmstuId get bmstuId;

  Future<BmstuId> updateBmstuId();
}

class BmstuIdRepository implements IBmstuIdRepository {
  final IBmstuIdLocalDataSource _local;
  final BmstuIdApi _remote;

  BmstuIdRepository({
    required IBmstuIdLocalDataSource local,
    required BmstuIdApi remote,
  })  : _local = local,
        _remote = remote;

  @override
  bool get firstOpen => _local.firstOpen.value;

  @override
  Future<void> completeFirstOpen() => _local.firstOpen.updateValue(false);

  @override
  BmstuId get bmstuId => _local.bmstuId;

  @override
  Future<BmstuId> updateBmstuId() async {
    final bmstuId = (await _remote.getBmstuId()).toModel();
    await _local.updateBmstuId(bmstuId);
    return bmstuId;
  }
}
