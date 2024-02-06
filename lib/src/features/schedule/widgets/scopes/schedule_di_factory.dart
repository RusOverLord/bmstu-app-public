import 'package:bbmstu_app/src/core/local_database/local_database_scope.dart';
import 'package:bbmstu_app/src/core/network/widgets/network_scope.dart';
import 'package:bbmstu_app/src/core/utility/value_stream.dart';
import 'package:bbmstu_app/src/features/authorization/authorization.dart';
import 'package:bbmstu_app/src/features/schedule/domain/bloc/favorites_switcher_bloc.dart';
import 'package:bbmstu_app/src/features/schedule/domain/bloc/favorites_bloc.dart';
import 'package:bbmstu_app/src/features/schedule/domain/bloc/schedule_bloc.dart';
import 'package:bbmstu_app/src/features/schedule/domain/bloc/schedule_service.dart';
import 'package:bbmstu_app/src/features/schedule/domain/handlers/delete_schedule_handler.dart';
import 'package:bbmstu_app/src/features/schedule/domain/handlers/remove_from_favorites_event_handler.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/schedule_event_bus_scope.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/scopes/schedule_registry_scope.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/scopes/schedule_context_scope.dart';
import 'package:flutter/widgets.dart';

import 'favorites_registry_scope.dart';
import 'favorites_repository_scope.dart';
import 'schedule_repository_scope.dart';

class ScheduleDIFactory {
  final BuildContext context;

  ScheduleDIFactory(this.context);

  late final scheduleContext = ScheduleContextScope.watch(context);

  late final local = LocalDatabaseScope.watchScheduleDao(context);

  late final remote = NetworkScope.watchScheduleApi(context);

  late final scheduleRepository = ScheduleRepositoryScope.watch(context);

  late final favoritesRepository = FavoritesRepositoryScope.watch(context);

  late final scheduleEventBus = ScheduleEventBusScope.watch(context);

  late final scheduleRegistry = ScheduleRegistryScope.watch(context);

  late final favoritesRegistry = FavoritesRegistryScope.watch(context);

  late final scheduleBloc = ScheduleBloc(
    scheduleEventBus: scheduleEventBus,
    uuid: scheduleContext.scheduleUuid,
    repository: scheduleRepository,
  );

  late final favoritesBloc = FavoritesBloc(
    repository: favoritesRepository,
    scheduleEventBus: scheduleEventBus,
  );

  late final favoriteSwitcherBloc = FavoritesSwitcherBloc(
    uuid: scheduleContext.scheduleUuid,
    repository: favoritesRepository,
    scheduleEventBus: scheduleEventBus,
  );

  late final scheduleService = ScheduleService(
    repository: scheduleRepository,
    mainScheduleUuid: mainScheduleUuid,
  );

  late final removeFromFavoritesEventHandler = RemoveFromFavoritesEventHandler(
    scheduleEventBus: scheduleEventBus,
    favoritesRepository: favoritesRepository,
    scheduleRepository: scheduleRepository,
    mainScheduleUuid: mainScheduleUuid,
  );

  late final deleteScheduleEventHandler = DeleteScheduleEventHandler(
    scheduleEventBus: scheduleEventBus,
    favoritesRepository: favoritesRepository,
    scheduleRepository: scheduleRepository,
  );

  late final authorizationBloc = AuthorizationScope.watchBloc(context);

  late final mainScheduleUuid = authorizationBloc.stream
      .valueStream(initialValue: authorizationBloc.state)
      .map((event) => event.mainScheduleUuid);
}
