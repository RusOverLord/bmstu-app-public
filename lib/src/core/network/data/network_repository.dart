import 'network_local_data_source.dart';

abstract class INetworkRepository {
  String? get baseUrl;

  Future<void> setBaseUrlOverride(String value);

  Future<void> deleteBaseUrlOverride();
}

class NetworkRepository implements INetworkRepository {
  final INetworkLocalDataSource _local;

  NetworkRepository({
    required INetworkLocalDataSource local,
  })  : _local = local;

  @override
  String? get baseUrl => _local.baseUrl.value;

  @override
  Future<void> setBaseUrlOverride(String value) => _local.baseUrl.updateValue(value);

  @override
  Future<void> deleteBaseUrlOverride() => _local.baseUrl.delete();
}
