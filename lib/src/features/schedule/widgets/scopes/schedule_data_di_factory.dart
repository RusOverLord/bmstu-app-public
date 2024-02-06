import 'package:bbmstu_app/src/core/utility/stream_transformers.dart';
import 'package:bbmstu_app/src/core/utility/value_stream.dart';
import 'package:bbmstu_app/src/features/authorization/authorization.dart';
import 'package:bbmstu_app/src/features/schedule/domain/handlers/add_to_favorites_event_handler.dart';
import 'package:bbmstu_app/src/features/schedule/presentation/bloc/lesson_page_view_notifier.dart';
import 'package:bbmstu_app/src/features/schedule/domain/bloc/schedule_calendar_bloc.dart';
import 'package:bbmstu_app/src/features/schedule/presentation/bloc/week_page_view_notifier.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/schedule_event_bus_scope.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/scopes/schedule_calendar_scope.dart';
import 'package:flutter/cupertino.dart';

import 'favorites_repository_scope.dart';
import 'schedule_bloc_scope.dart';
import 'schedule_repository_scope.dart';
import 'schedule_state_data_scope.dart';

class ScheduleDataDIFactory {
  final BuildContext context;

  ScheduleDataDIFactory(this.context);

  late final dataContext = ScheduleDataContextScope.watch(context);

  late final scheduleBloc = ScheduleBlocScope.watchBloc(context);

  late final authorizationBloc = AuthorizationScope.watchBloc(context);

  late final scheduleRepository = ScheduleRepositoryScope.watch(context);

  late final favoritesRepository = FavoritesRepositoryScope.watch(context);

  late final scheduleEventBus = ScheduleEventBusScope.watch(context);

  late final scheduleCalendarBloc = ScheduleCalendarBloc(
    semesterRange: _semesterRange,
  );

  late final lessonPageViewNotifier = LessonPageViewNotifier.common(
    lessons: dataContext.schedule.lessons,
  );

  late final weekPageViewNotifier = WeekPageViewNotifier.common(
    selectedDayIndex: ScheduleCalendarScope.watch(context).selectedDayIndex,
    schedule: dataContext.schedule,
  );

  late final addToFavoritesEventHandler = AddToFavoritesEventHandler(
    repository: favoritesRepository,
    scheduleEventBus: scheduleEventBus,
  );

  late final _schedule = scheduleBloc.stream
      .map(
        (event) => event.schedule,
      )
      .whereNotNull()
      .valueStream(
        initialValue: dataContext.schedule,
      );

  late final _semesterRange = _schedule.map((event) => event.semesterRange);
}
