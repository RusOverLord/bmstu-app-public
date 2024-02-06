import 'package:bbmstu_app/src/core/crashlytics.dart';
import 'package:bloc/bloc.dart';

import 'logger.dart';

class StandardBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    l.i('Create ${bloc.runtimeType}, state: ${bloc.state}');
    super.onCreate(bloc);
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    l.i('${bloc.runtimeType}: $event');
    super.onEvent(bloc, event);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    l.i('${bloc.runtimeType}: ${change.nextState}');
    super.onChange(bloc, change);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    l.e('${bloc.runtimeType}', stackTrace: stackTrace);
    ICrashlytics.instance.recordError(error, stackTrace);
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    l.i('Close ${bloc.runtimeType}');
    super.onClose(bloc);
  }
}
