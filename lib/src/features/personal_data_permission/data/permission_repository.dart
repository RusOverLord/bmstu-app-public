import 'permission_local_data_source.dart';

abstract class IPermissionRepository {
  bool get value;

  Future<void> confirm();
}

class PermissionRepository implements IPermissionRepository {
  final IPermissionLocalDataSource _local;

  PermissionRepository({
    required IPermissionLocalDataSource local,
  }) : _local = local;

  @override
  bool get value => _local.setting.value;

  @override
  Future<void> confirm() => _local.setting.updateValue(true);
}
