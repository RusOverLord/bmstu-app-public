import 'package:bbmstu_app/src/features/schedule/models/lesson.dart';
import 'package:bbmstu_app/src/features/schedule/models/whom.dart';

class LessonViewModel implements Comparable<LessonViewModel> {
  final Lesson lesson;
  final String time;
  final String cabinet;
  final WhomViewModel whom;

  const LessonViewModel({
    required this.lesson,
    required this.time,
    required this.cabinet,
    required this.whom,
  });

  factory LessonViewModel.fromLesson(Lesson lesson) {
    return LessonViewModel(
      lesson: lesson,
      time: '${lesson.time.start.toColonStringFormat()}\n${lesson.time.end.toColonStringFormat()}',
      cabinet: lesson.cabinet,
      whom: WhomViewModel.fromWhomList(lesson.whomList),
    );
  }

  String get name => lesson.name;

  String get type => lesson.type;

  bool get whomIsEmpty => lesson.whomList.isEmpty;

  bool get cabinetIsEmpty => lesson.cabinet.isEmpty;

  @override
  int compareTo(LessonViewModel other) => lesson.compareTo(other.lesson);
}

class WhomViewModel {
  final String whom;
  final bool isEmpty;

  WhomViewModel({
    required this.whom,
    required this.isEmpty,
  });

  factory WhomViewModel.fromWhomList(List<Whom> whomList) {
    final isEmpty = whomList.isEmpty;
    final String whom;

    if (isEmpty) {
      whom = 'Преподаватель не указан';
    } else {
      var text = whomList.first.nameView;

      if (whomList.length > 1) {
        for (var i = 1; i < whomList.length; i++) {
          text += ' | ' + whomList[i].nameView;
        }
      }

      whom = text;
    }

    return WhomViewModel(
      whom: whom,
      isEmpty: isEmpty,
    );
  }
}
