import 'dart:async';

import 'package:bbmstu_app/src/features/schedule/domain/schedule_registry.dart';
import 'package:bbmstu_app/src/features/schedule/models/models.dart';
import 'package:bbmstu_app/src/features/schedule/data/mapper/mapper.dart';
import 'package:local_database/local_database.dart';
import 'package:remote_api/remote_api.dart';

class ScheduleRepository {
  final ScheduleApi _remote;
  final ScheduleDao _local;
  final ScheduleRegistry _scheduleRegistry;


  ScheduleRepository({
    required ScheduleApi remote,
    required ScheduleDao local,
    required ScheduleRegistry scheduleRegistry,
  })  : _remote = remote,
        _local = local,
        _scheduleRegistry = scheduleRegistry;

  Future<bool> isExistsAndNotFavorite(String uuid) => _local.checkIfExistsAndNotFavorite(uuid);

  Future<bool> isExists(String uuid) => _local.checkIfExists(uuid);

  Schedule? getSync(String uuid) => _scheduleRegistry.getSchedule(uuid);

  Future<Schedule> fetchRemote(String uuid) async => (await _remote.getSchedule(uuid)).toModel();

  FutureOr<Schedule> fetchLocal(String uuid) async {
    Future<Schedule> fireFetchLocal() async {
      final schedule = (await _local.getSchedule(uuid)).toModel();
      _scheduleRegistry.add(schedule);
      return schedule;
    }

    return getSync(uuid) ?? await fireFetchLocal();
  }

  Future<void> save(Schedule schedule) async {
    await _local.insertSchedule(schedule.decomposeToSql());
    _scheduleRegistry.add(schedule);
  }

  Future<void> delete(String uuid) async {
    await _local.deleteSchedule(uuid);
    _scheduleRegistry.remove(uuid);
  }
}
