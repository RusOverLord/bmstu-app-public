import 'dart:async';

import 'package:bbmstu_app/main.dart';
import 'package:bbmstu_app/src/features/bmstu_id_onboarding/bmstu_id_onboarding.dart';
import 'package:bbmstu_app/src/features/bmstu_id/widget/bmstu_id_scope.dart';
import 'package:bbmstu_app/src/features/authorization/widgets/authorization_scope.dart';
import 'package:flutter/material.dart';

import 'bmstu_id_app_bar.dart';
import 'bmstu_id_refresh_indicator.dart';
import 'has_not_login_view.dart';
import 'qr_code_view.dart';

Future<void> pushQrScreen(BuildContext context) {
  return Navigator.of(context).push<void>(
    MaterialPageRoute(
      settings: const RouteSettings(name: 'QRScreen'),
      builder: (context) {
        return const SafeArea(
          child: BmstuIdScreen(),
        );
      },
    ),
  );
}

@immutable
class BmstuIdScreen extends StatelessWidget {
  const BmstuIdScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BmstuIdAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20 * devScale,
        ),
        child: Builder(
          builder: (BuildContext context) {
            final isAuthorized = AuthorizationScope.watchIsAuthorized(context);

            if (isAuthorized) {
              return const BmstuIdScope(
                child: _FirstOpenListener(
                  child: BmstuIdRefreshIndicator(
                    child: QrCodeView(),
                  ),
                ),
              );
            }

            return const HasNotLoginView();
          },
        ),
      ),
    );
  }
}

@immutable
class _FirstOpenListener extends StatefulWidget {
  final Widget child;

  const _FirstOpenListener({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  State<_FirstOpenListener> createState() => __FirstOpenListenerState();
}

class __FirstOpenListenerState extends State<_FirstOpenListener> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final firstOpen = BmstuIdScope.watchFirstOpen(context);

    if (firstOpen) {
      _showOnboarding();
    }
  }

  void _showOnboarding() {
    WidgetsBinding.instance?.addPostFrameCallback(
      (_) => showBmstuIdOnboardingDialog(context).then((_) => BmstuIdScope.completeFirstOpen(context)),
    );
  }

  @override
  Widget build(BuildContext context) => widget.child;
}
