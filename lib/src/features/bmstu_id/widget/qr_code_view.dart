import 'package:bbmstu_app/main.dart';
import 'package:bbmstu_app/src/core/widgets/indent.dart';
import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:bbmstu_app/src/features/bmstu_id/widget/bmstu_id_scope.dart';
import 'package:bbmstu_app/src/features/authorization/widgets/authorization_scope.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:screen_brightness/screen_brightness.dart';

import 'qr_code_with_gradient.dart';

@immutable
class QrCodeView extends StatefulWidget {
  const QrCodeView({
    Key? key,
  }) : super(key: key);

  @override
  State<QrCodeView> createState() => _QrCodeViewState();
}

class _QrCodeViewState extends State<QrCodeView> {
  @override
  void initState() {
    super.initState();
    ScreenBrightness().current.then(
      (value) {
        if (value <= 0.8) {
          ScreenBrightness().setScreenBrightness(0.8);
        }
      },
    );
  }

  @override
  void dispose() {
    ScreenBrightness().resetScreenBrightness();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 12 * devScale,
        left: 12 * devScale,
        top: 32 * devScale,
        bottom: 20 * devScale,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const QrCodeWithGradient(),
          Indent.vertical(16 * devScale),
          const _UserNameView(),
          Indent.vertical(8 * devScale),
          const _AccessStatusView(),
        ],
      ),
    );
  }
}

@immutable
class _UserNameView extends ConsumerWidget {
  const _UserNameView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final theme = context.theme.qrCodeTheme;
    final userName = AuthorizationScope.watchUser(context)!.name;
    return Text(
      userName,
      style: theme.userNameTextStyle,
    );
  }
}

@immutable
class _AccessStatusView extends StatelessWidget {
  const _AccessStatusView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.qrCodeTheme;
    final bmstuId = BmstuIdScope.watchBmstuId(context);
    final text = bmstuId.map(
      empty: (empty) => 'Доступ в университет ещё не оформлен',
      data: (data) {
        if (data.accessIsAllowed) {
          const text = 'Доступ в университет разрешен';
          final expiredAt = data.expiredAt;

          if (expiredAt != null) {
            final formatter = DateFormat('dd.MM.yyyy', 'ru_RU');
            final expiredAtText = formatter.format(expiredAt);
            return '$text\nдо $expiredAtText';
          }

          return text;
        }

        return 'Доступ в университет запрещён';
      },
    );

    return Text(
      text,
      style: theme.accessStatusTextStyle
    );
  }
}
