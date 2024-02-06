import 'whom.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'lesson.freezed.dart';

@freezed
abstract class Lesson with _$Lesson implements Comparable<Lesson> {
  const Lesson._();

  const factory Lesson({
    required String uuid,
    required int dayNumber,
    required String name,
    required String cabinet,
    required String type,
    required DayTimeRange time,
    required bool isNumerator,
    required List<Whom> whomList,
    required String scheduleUuid,
  }) = _Lesson;

  bool get isDenominator => !isNumerator;

  @override
  int compareTo(Lesson other) {
    final dayDifference = dayNumber - other.dayNumber;

    if (dayDifference != 0) return dayDifference;
    return time.compareTo(other.time);
  }
}

class DayTimeRange with EquatableMixin implements Comparable<DayTimeRange> {
  final DayTime start;
  final DayTime end;

  DayTimeRange({
    required this.start,
    required this.end,
  }) : assert(end.isAfter(start));

  Duration get duration => end.difference(start);

  bool isBefore(DayTime time) => end.isBefore(time);

  bool isAfter(DayTime time) => start.isAfter(time);

  bool isInclude(DayTime time) => !isAfter(time) && !isBefore(time);

  @override
  int compareTo(DayTimeRange other) => start.compareTo(other.start);

  @override
  List<Object?> get props => [
        start,
        end,
      ];
}

class DayTime with EquatableMixin implements Comparable<DayTime> {
  final int hour;
  final int minute;
  final int second;

  DayTime({
    required this.hour,
    required this.minute,
    required this.second,
  });

  factory DayTime.fromDateTime(DateTime dateTime) {
    return DayTime(
      hour: dateTime.hour,
      minute: dateTime.minute,
      second: dateTime.second,
    );
  }

  factory DayTime.now() => DayTime.fromDateTime(DateTime.now());

  DateTime toDateTime() => DateTime(1970, 01, 1, hour, minute, second);

  bool isBefore(DayTime other) => difference(other) < Duration.zero;

  bool isAfter(DayTime other) => difference(other) > Duration.zero;

  Duration difference(DayTime other) => Duration(
        hours: hour - other.hour,
        minutes: minute - other.minute,
        seconds: second - other.second,
      );

  String toColonStringFormat() {
    var minute = this.minute.toString();
    if (minute.length == 1) {
      minute = '0' + minute;
    }

    var hour = this.hour.toString();
    if (hour.length == 1) {
      hour = '0' + hour;
    }

    return hour + ':' + minute;
  }

  @override
  int compareTo(DayTime other) => difference(other).inMicroseconds;

  @override
  List<Object?> get props => [
        hour,
        minute,
        second,
      ];
}
