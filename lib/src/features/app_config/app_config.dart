import 'dart:async';
import 'package:bbmstu_app/main.dart';
import 'package:bbmstu_app/src/core/crashlytics.dart';
import 'package:bbmstu_app/src/core/fire_base/widgets/firebase_scope.dart';
import 'package:bbmstu_app/src/core/local_database/local_database_scope.dart';
import 'package:bbmstu_app/src/core/network/widgets/network_scope.dart';
import 'package:bbmstu_app/src/core/remote_settings/data/remote_settings_repository.dart';
import 'package:bbmstu_app/src/core/remote_settings/domain/end_of_support.dart';
import 'package:bbmstu_app/src/core/remote_settings/widgets/remote_settings_scope.dart';
import 'package:bbmstu_app/src/core/settings/settings.dart';
import 'package:bbmstu_app/src/core/standard_bloc_observer.dart';
import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:bbmstu_app/src/core/widgets/indent.dart';
import 'package:bbmstu_app/src/core/widgets/standard_asset_image.dart';
import 'package:bbmstu_app/src/core/widgets/standard_blurred_background.dart';
import 'package:bbmstu_app/src/core/widgets/standard_button.dart';
import 'package:bbmstu_app/src/core/widgets/standard_icons.dart';
import 'package:bbmstu_app/src/features/authorization/authorization.dart';
import 'package:bbmstu_app/src/features/news/data/news_repository.dart';
import 'package:bbmstu_app/src/features/personal_data_permission/personal_data_permission.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/schedule_event_bus_scope.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/scopes/delete_schedule_handler_scope.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/scopes/favorites_registry_scope.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/scopes/favorites_repository_scope.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/scopes/remove_from_favorites_event_handler_scope.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/scopes/schedule_registry_scope.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/scopes/schedule_repository_scope.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show Bloc;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:url_launcher/url_launcher_string.dart';
import 'init_firebase.dart';
import 'init_remote_settings.dart';
import 'init_settings.dart';

Future<Widget> app() async {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = StandardBlocObserver();
  await initializeDateFormatting('ru_RU', null);
  tz.initializeTimeZones();

  final settings = await initSettings();
  final fireBase = await initFirebase(settings);
  final firebaseToken = await fireBase.token;
  final remoteSettingsRepository = await initRemoteSettings();

  FlutterError.onError = ICrashlytics.instance.recordFlutterError;

  return GlobalScopes(
    settings: settings,
    firebaseToken: firebaseToken,
    remoteSettingsRepository: remoteSettingsRepository,
  );
}

@immutable
class GlobalScopes extends StatelessWidget {
  final ISettingsLocalDataSource settings;
  final String firebaseToken;
  final IRemoteSettingsRepository remoteSettingsRepository;

  const GlobalScopes({
    Key? key,
    required this.settings,
    required this.firebaseToken,
    required this.remoteSettingsRepository,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SettingsScope(
      value: settings,
      child: FirebaseScope(
        token: firebaseToken,
        child: LocalDatabaseScope(
          child: RemoteSettingsScope(
            repository: remoteSettingsRepository,
            child: NetworkScope(
              child: Builder(
                builder: (context) {
                  final newsRDS = NetworkScope.watchNewsApi(context);
                  return ProviderScope(
                    overrides: [
                      newsRemoteDataSourceProvider.overrideWithValue(newsRDS),
                    ],
                    child: const ThemeScope(
                      child: AuthorizationScope(
                        child: ScheduleEventBusScope(
                          child: ScheduleRegistryScope(
                            child: FavoritesRegistryScope(
                              child: ScheduleRepositoryScope(
                                child: FavoritesRepositoryScope(
                                  child: RemoveFromFavoritesEventHandlerScope(
                                    child: DeleteScheduleEventHandlerScope(
                                      child: PersonalDataPermissionScope(
                                        type: PermissionType.login,
                                        child: App(),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

@immutable
class EndOfSupportScope extends StatefulWidget {
  final Widget child;

  const EndOfSupportScope({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  State<EndOfSupportScope> createState() => _EndOfSupportScopeState();
}

class _EndOfSupportScopeState extends State<EndOfSupportScope> {
  // @override
  // void initState() {
  //   super.initState();
  //
  //   showDialog(RemoteSettingsScope.readEndOfSupport(context));
  // }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final endOfSupport = RemoteSettingsScope.watchEndOfSupport(context);

    showDialog(endOfSupport);
  }

  void showDialog(EndOfSupport endOfSupport) {
    if (endOfSupport.title.isEmpty && endOfSupport.body.isEmpty && endOfSupport.url.isEmpty) return;

    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        showGeneralDialog<void>(
          context: context,
          barrierColor: Colors.transparent,
          pageBuilder: (buildContext, animation, secondaryAnimation) => PermissionDialog(
            endOfSupport: endOfSupport,
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) => widget.child;
}

@immutable
class PermissionDialog extends ConsumerWidget {
  final EndOfSupport endOfSupport;

  const PermissionDialog({
    Key? key,
    required this.endOfSupport,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final theme = context.theme.personalDataPermissionTheme;

    return PermissionDialogContainer(
      child: Padding(
        padding: EdgeInsets.only(
          top: 8 * devScale,
          bottom: 16 * devScale,
          left: 16 * devScale,
          right: 8 * devScale,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Align(
              alignment: Alignment.centerRight,
              child: CloseIcon(),
            ),
            Padding(
              padding: EdgeInsets.only(
                right: 8 * devScale,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    endOfSupport.title,
                    style: theme.titleTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  Indent.vertical(24 * devScale),
                  Text(
                    endOfSupport.body,
                    style: theme.paragraphTextStyle,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: endOfSupport.body,
                          style: theme.paragraphTextStyle,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () async {
                              if (await canLaunchUrlString(endOfSupport.url)) {
                                await launchUrlString(endOfSupport.url);
                              }
                            },
                        ),
                        TextSpan(
                          style: theme.paragraphTextStyle.copyWith(color: Colors.blue),
                          text: endOfSupport.url,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () async {
                              if (await canLaunchUrlString(endOfSupport.url)) {
                                await launchUrlString(endOfSupport.url);
                              }
                            },
                        ),
                      ],
                    ),
                  ),
                  Indent.vertical(22 * devScale),
                  const ContinueButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

@immutable
class PermissionDialogContainer extends StatelessWidget {
  final Widget child;

  const PermissionDialogContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.personalDataPermissionTheme;

    return StandardBlurredBackground(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20 * devScale,
        ),
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10.0 * devScale)),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: theme.backgroundColor,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(ImageAsset.personal_data_permission.getAsset()),
                ),
              ),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}

@immutable
class ContinueButton extends StatelessWidget {
  const ContinueButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.personalDataPermissionTheme;

    return SizedBox(
      width: double.infinity,
      child: StandardButton(
        onTap: () => Navigator.of(context).pop(),
        color: theme.activeColor,
        borderRadius: BorderRadius.circular(6 * devScale),
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 13 * devScale,
          ),
          child: Text(
            'Продолжить',
            style: theme.activeButtonTextStyle,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

@immutable
class CloseIcon extends StatelessWidget {
  const CloseIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.personalDataPermissionTheme;
    return GestureDetector(
      onTap: Navigator.of(context).pop,
      child: Material(
        color: Colors.transparent,
        type: MaterialType.button,
        child: Padding(
          padding: EdgeInsets.all(8.0 * devScale),
          child: Icon(
            StandardIcons.close,
            color: theme.closeColor,
            size: 15 * devScale,
          ),
        ),
      ),
    );
  }
}
