import 'package:bbmstu_app/src/constants/constants.dart';
import 'package:bbmstu_app/src/core/fire_base/widgets/firebase_scope.dart';
import 'package:bbmstu_app/src/core/network/data/network_local_data_source.dart';
import 'package:bbmstu_app/src/core/network/data/network_repository.dart';
import 'package:bbmstu_app/src/core/network/domain/network_bloc.dart';
import 'package:bbmstu_app/src/core/settings/settings.dart';
import 'package:bbmstu_app/src/core/widgets/scopes/bloc_state_scope.dart';
import 'package:bbmstu_app/src/core/widgets/scopes/value_scope.dart';
import 'package:flutter/material.dart';
import 'package:remote_api/remote_api.dart';

typedef _Bloc = NetworkBloc;

typedef _Event = NetworkEvent;

typedef _State = NetworkState;

typedef _BlocScope = ValueScope<_Bloc>;

typedef _StateScope = BlocStateScope<_Bloc, _Event, _State>;

@immutable
class NetworkScope extends StatefulWidget {
  final Widget child;

  const NetworkScope({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  State<NetworkScope> createState() => _NetworkScopeState();

  static _State watchState(BuildContext context) => ValueScope.watch<_State>(context);

  static _State readState(BuildContext context) => ValueScope.read<_State>(context);

  static _Bloc watchBloc(BuildContext context) => ValueScope.watch<_Bloc>(context);

  static _Bloc readBloc(BuildContext context) => ValueScope.read<_Bloc>(context);

  static String watchBaseUrl(BuildContext context) => watchState(context).baseUrl;

  static String readBaseUrl(BuildContext context) => readState(context).baseUrl;

  static NewsApi watchNewsApi(BuildContext context) => _ApiScope.watch(context, _Api.news).newsApi;

  static NewsApi readNewsApi(BuildContext context) => _ApiScope.read(context).newsApi;

  static SearchApi watchSearchApi(BuildContext context) => _ApiScope.watch(context, _Api.search).searchApi;

  static SearchApi readSearchApi(BuildContext context) => _ApiScope.read(context).searchApi;

  static ScheduleApi watchScheduleApi(BuildContext context) => _ApiScope.watch(context, _Api.schedule).scheduleApi;

  static ScheduleApi readScheduleApi(BuildContext context) => _ApiScope.read(context).scheduleApi;

  static UserApi watchUserApi(BuildContext context) => _ApiScope.watch(context, _Api.user).userApi;

  static UserApi readUserApi(BuildContext context) => _ApiScope.read(context).userApi;

  static BmstuIdApi watchBmstuIdApi(BuildContext context) =>
      _ApiScope.watch(context, _Api.bmstuIdApi).bmstuApi;

  static BmstuIdApi readBmstuIdApi(BuildContext context) =>
      _ApiScope.read(context).bmstuApi;

  static void overrideUrl(
    BuildContext context, {
    required String baseUrl,
  }) =>
      readBloc(context).add(_Event.overrideUrl(baseUrl: baseUrl));

  static void deleteUrlOverride(BuildContext context) => readBloc(context).add(const _Event.deleteUrlOverride());
}

class _NetworkScopeState extends State<NetworkScope> {
  late final _Bloc _bloc;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _bloc = _Bloc(
      repository: NetworkRepository(
        local: NetworkLocalDataSource(
          settings: SettingsScope.watch(context),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _BlocScope(
      value: _bloc,
      child: _StateScope(
        child: _ApiScopeBuilder(
          child: widget.child,
        ),
      ),
    );
  }
}

@immutable
class _ApiScopeBuilder extends StatefulWidget {
  final Widget child;

  const _ApiScopeBuilder({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  State<_ApiScopeBuilder> createState() => _ApiScopeBuilderState();
}

class _ApiScopeBuilderState extends State<_ApiScopeBuilder> {
  String? _baseUrl;
  late RemoteApiService _service;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final baseUrl = NetworkScope.watchBaseUrl(context);

    if (baseUrl != _baseUrl) {
      _baseUrl = baseUrl;
      _service = RemoteApiService.create(baseUrl, log: enableNetworkLog);
    }
  }

  @override
  Widget build(BuildContext context) {
    final firebaseToken = FirebaseScope.watchToken(context);
    return _ApiScope(
      newsApi: NewsApi(
        service: _service,
        firebaseToken: firebaseToken,
      ),
      scheduleApi: ScheduleApi(
        service: _service,
        firebaseToken: firebaseToken,
      ),
      searchApi: SearchApi(
        service: _service,
        firebaseToken: firebaseToken,
      ),
      userApi: UserApi(
        service: _service,
        firebaseToken: firebaseToken,
      ),
      bmstuApi: BmstuIdApi(
        service: _service,
        firebaseToken: firebaseToken,
      ),
      child: widget.child,
    );
  }
}

enum _Api {
  news,
  search,
  schedule,
  user,
  bmstuIdApi,
}

class _ApiScope extends InheritedModel<_Api> {
  final NewsApi newsApi;
  final SearchApi searchApi;
  final ScheduleApi scheduleApi;
  final UserApi userApi;
  final BmstuIdApi bmstuApi;

  const _ApiScope({
    Key? key,
    required Widget child,
    required this.newsApi,
    required this.searchApi,
    required this.scheduleApi,
    required this.userApi,
    required this.bmstuApi,
  }) : super(key: key, child: child);

  static _ApiScope watch(BuildContext context, _Api aspect) {
    return context.dependOnInheritedWidgetOfExactType<_ApiScope>(aspect: aspect)!;
  }

  static _ApiScope read(BuildContext context) {
    final inheritedWidget = context.getElementForInheritedWidgetOfExactType<_ApiScope>()!.widget;
    return inheritedWidget as _ApiScope;
  }

  @override
  bool updateShouldNotify(_ApiScope oldWidget) =>
      _newsNotEqual(oldWidget.newsApi) ||
      _searchNotEqual(oldWidget.searchApi) ||
      _scheduleNotEqual(oldWidget.scheduleApi) ||
      _userNotEqual(oldWidget.userApi) ||
      _covidCertificateNotEqual(oldWidget.bmstuApi);

  @override
  bool updateShouldNotifyDependent(_ApiScope oldWidget, Set<_Api> dependencies) {
    final contains = dependencies.contains;
    return _newsNotEqual(oldWidget.newsApi) && contains(_Api.news) ||
        _searchNotEqual(oldWidget.searchApi) && contains(_Api.search) ||
        _scheduleNotEqual(oldWidget.scheduleApi) && contains(_Api.schedule) ||
        _userNotEqual(oldWidget.userApi) && contains(_Api.user) ||
        _covidCertificateNotEqual(oldWidget.bmstuApi) && contains(_Api.bmstuIdApi);
  }

  bool _notEqual<T>(T a, T b) => !identical(a, b) || a != b;

  bool _newsNotEqual(NewsApi other) => _notEqual<NewsApi>(newsApi, other);

  bool _searchNotEqual(SearchApi other) => _notEqual<SearchApi>(searchApi, other);

  bool _scheduleNotEqual(ScheduleApi other) => _notEqual<ScheduleApi>(scheduleApi, other);

  bool _userNotEqual(UserApi other) => _notEqual<UserApi>(userApi, other);

  bool _covidCertificateNotEqual(BmstuIdApi other) =>
      _notEqual<BmstuIdApi>(bmstuApi, other);
}
