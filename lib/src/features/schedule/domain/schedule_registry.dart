import 'package:bbmstu_app/src/features/schedule/models/models.dart';

class ScheduleRegistry {
  final _schedules = <String, Schedule>{};

  void add(Schedule schedule) => _schedules[schedule.uuid] = schedule;

  void remove(String uuid) => _schedules.remove(uuid);

  Schedule? getSchedule(String uuid) => _schedules[uuid];
}
