import 'package:bbmstu_app/src/core/widgets/standard_blurred_background.dart';
import 'package:bbmstu_app/main.dart';
import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:flutter/material.dart';
import 'eu_authorization_screen.dart';
import 'gear_loading_ring.dart';

class LoginLoadingView extends StatelessWidget {
  const LoginLoadingView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.loginTheme.loadingLoginTheme;
    return StandardBlurredBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const GearLoadingRing(),
          Listener(
            onPointerUp: (_) => EuAuthorizationScope.cancel(context),
            child: Material(
              type: MaterialType.button,
              color: Colors.transparent,
              child: Padding(
                padding: EdgeInsets.all(25 * devScale),
                child: Text(
                  'Отмена',
                  style: theme.cancelTextStyle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
