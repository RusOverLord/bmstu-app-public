import 'package:bbmstu_app/src/core/themes/data/theme_repository.dart';
import 'package:bbmstu_app/src/core/themes/models/app_theme.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_bloc.freezed.dart';

@freezed
abstract class ThemeEvent with _$ThemeEvent {
  const ThemeEvent._();

  @With(_DefinedEmitter)
  const factory ThemeEvent.switchTheme() = ThemeEventSwitchTheme;

  @Implements(_IAppThemeContainer)
  @With(_SyncPlatformEmitter)
  const factory ThemeEvent.syncPlatform({
    required AppTheme theme,
  }) = ThemeEventSyncPlatform;

  @With(_DefinedEmitter)
  const factory ThemeEvent.desyncPlatform() = ThemeEventDesyncPlatform;
}

@freezed
abstract class ThemeState with _$ThemeState {
  const ThemeState._();

  const factory ThemeState.defined({
    required AppTheme theme,
  }) = ThemeStateDefined;

  const factory ThemeState.syncPlatform({
    required AppTheme theme,
  }) = ThemeStateSyncPlatform;

  bool get isSyncPlatform => maybeMap(
        syncPlatform: (_) => true,
        orElse: () => false,
      );
}

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  final IThemeRepository _repository;

  ThemeBloc({
    required IThemeRepository repository,
    required AppTheme platformTheme,
  })  : _repository = repository,
        super(_initialState(repository, platformTheme));

  static ThemeState _initialState(IThemeRepository repository, AppTheme platformTheme) {
    final theme = repository.appTheme;
    final syncPlatform = repository.syncAppTheme || theme == null;

    if (syncPlatform) {
      return ThemeState.syncPlatform(theme: platformTheme);
    }

    return ThemeState.defined(theme: theme);
  }

  @override
  Stream<ThemeState> mapEventToState(ThemeEvent event) => event.map<Stream<ThemeState>>(
        switchTheme: _switchTheme,
        syncPlatform: _syncPlatform,
        desyncPlatform: _desyncPlatform,
      );

  Stream<ThemeState> _switchTheme(ThemeEventSwitchTheme event) async* {
    /// меняет тему на противоположную
    final theme = state.theme.isLight ? AppTheme.dark : AppTheme.light;
    await _repository.setAppTheme(theme);
    yield event.defined(theme: theme);
  }

  Stream<ThemeState> _syncPlatform(ThemeEventSyncPlatform event) async* {
    await _repository.setSyncAppTheme(true);
    await _repository.setAppTheme(event.theme);
    yield event.syncPlatform();
  }

  Stream<ThemeState> _desyncPlatform(ThemeEventDesyncPlatform event) async* {
    await _repository.setSyncAppTheme(false);
    await _repository.setAppTheme(state.theme);
    yield event.defined(theme: state.theme);
  }
}

abstract class _IAppThemeContainer {
  AppTheme get theme;
}

mixin _DefinedEmitter on ThemeEvent {
  ThemeState defined({required AppTheme theme}) => ThemeState.defined(theme: theme);
}

mixin _SyncPlatformEmitter on ThemeEvent implements _IAppThemeContainer {
  ThemeState syncPlatform() => ThemeState.syncPlatform(theme: theme);
}
