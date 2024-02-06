import 'dart:async';

import 'package:bbmstu_app/src/core/widgets/standard_asset_image.dart';
import 'package:bbmstu_app/src/core/widgets/indent.dart';
import 'package:bbmstu_app/src/features/authorization/domain/authorization_bloc.dart';
import 'package:bbmstu_app/src/features/authorization/widgets/authorization_scope.dart';
import 'package:bbmstu_app/main.dart';
import 'package:bbmstu_app/src/core/widgets/standard_button.dart';
import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:bbmstu_app/src/features/authorization/models/user_type.dart';
import 'package:flutter/material.dart';
import 'package:charcode/html_entity.dart';

class StartDatingScreenStudent extends StatelessWidget {
  static final mdash = String.fromCharCode($mdash);

  const StartDatingScreenStudent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.firstOpenTheme.startDatingTheme;
    return _UserListener(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20 * devScale,
          ),
          child: Column(
            children: [
              Indent.vertical(16 * devScale),
              const StandardAssetImage(
                imageAsset: ImageAsset.bmstu,
              ),
              Indent.vertical(24 * devScale),
              const _BMSTULabel(),
              Indent.vertical(8 * devScale),
              const _BMSTUSubLabel(),
              Indent.vertical(40 * devScale),
              const _LoginButton(
                text: 'Войти через ЭУ',
              ),
              Indent.vertical(13 * devScale),
              Text(
                '$mdash или $mdash',
                textAlign: TextAlign.center,
                style: theme.orTextStyle,
              ),
              Indent.vertical(13 * devScale),
              const _SearchButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class StartDatingScreenEmployee extends StatelessWidget {
  static final mdash = String.fromCharCode($mdash);

  const StartDatingScreenEmployee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _UserListener(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20 * devScale,
          ),
          child: Column(
            children: [
              Indent.vertical(16 * devScale),
              const StandardAssetImage(
                imageAsset: ImageAsset.bmstu,
              ),
              Indent.vertical(24 * devScale),
              const _BMSTULabel(),
              Indent.vertical(8 * devScale),
              const _BMSTUSubLabel(),
              Indent.vertical(96 * devScale),
              const _LoginButton(
                text: 'Войти через ЕУЗ',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

@immutable
class _UserListener extends StatefulWidget {
  final Widget child;

  const _UserListener({
    Key? key,
    required this.child,
  })  : super(key: key);

  @override
  State<_UserListener> createState() => __UserListenerState();
}

class __UserListenerState extends State<_UserListener> {
  late StreamSubscription<AuthorizationState> _subscription;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _subscription = AuthorizationScope.watchBloc(context).stream.listen((event) {
      if (event.userType != null) {
        Navigator.of(context).pop();
      }
    });
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}

@immutable
class _BMSTULabel extends StatelessWidget {
  const _BMSTULabel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.firstOpenTheme.startDatingTheme;
    return Text(
      'МГТУ им. Н. Э. Баумана',
      style: theme.bmstuLabelTextStyle,
    );
  }
}

@immutable
class _BMSTUSubLabel extends StatelessWidget {
  const _BMSTUSubLabel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.firstOpenTheme.startDatingTheme;
    return Text(
      '190 лет великой истории',
      style: theme.bmstuSubLabelTextStyle,
    );
  }
}

@immutable
class _LoginButton extends StatelessWidget {
  final String text;

  const _LoginButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.firstOpenTheme.startDatingTheme;
    return StandardButton(
      color: theme.loginColor,
      borderRadius: BorderRadius.all(Radius.circular(6 * devScale)),
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 15 * devScale),
        child: Text(
          text,
          style: theme.loginTextStyle,
        ),
      ),
      onTap: () => AuthorizationScope.getUserOrLogin(context),
    );
  }
}

@immutable
class _SearchButton extends StatelessWidget {
  const _SearchButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.firstOpenTheme.startDatingTheme;
    return StandardButton(
      color: theme.searchColor,
      borderRadius: BorderRadius.all(Radius.circular(6 * devScale)),
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 15 * devScale),
        child: Text(
          'Найти своё расписание',
          style: theme.searchTextStyle,
        ),
      ),
      onTap: () => search(context),
    );
  }

  Future<void> search(BuildContext context) => AuthorizationScope.loginBySearch(context, userType: UserType.student);
}
