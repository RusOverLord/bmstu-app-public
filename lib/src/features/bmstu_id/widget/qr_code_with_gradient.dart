import 'dart:ui';

import 'package:bbmstu_app/main.dart';
import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:bbmstu_app/src/features/bmstu_id/widget/bmstu_id_scope.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:flutter/widgets.dart';

@immutable
class QrCodeWithGradient extends StatelessWidget {
  const QrCodeWithGradient({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.qrCodeTheme;
    final bmstuId = BmstuIdScope.watchBmstuId(context);

    return bmstuId.map(
      empty: (empty) => _QrCodeWithGradient(
        data: 'Empty',
        blurred: true,
        gradient: theme.qrDenied,
      ),
      data: (data) {
        if (data.accessIsAllowed) {
          return _QrCodeWithGradient(
            data: data.qrString,
            gradient: theme.qrGranted,
          );
        }

        return _QrCodeWithGradient(
          data: data.qrString,
          gradient: theme.qrDenied,
        );
      },
    );
  }
}

@immutable
class _QrCodeWithGradient extends StatelessWidget {
  final String data;
  final bool blurred;
  final Gradient gradient;

  const _QrCodeWithGradient({
    Key? key,
    required this.data,
    this.blurred = false,
    required this.gradient,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.qrCodeTheme;
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.circular(8 * devScale),
      ),
      child: Padding(
        padding: EdgeInsets.all(5 * devScale),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: theme.qrBackgroundColor,
            borderRadius: BorderRadius.circular(3 * devScale),
          ),
          child: Builder(
            builder: (context) {
              Widget current = QrImage(
                data: data,
                padding: EdgeInsets.all(15 * devScale),
                backgroundColor: theme.qrBackgroundColor,
                foregroundColor: theme.qrForegroundColor,
              );

              if (blurred) {
                current = ImageFiltered(
                  imageFilter: ImageFilter.blur(
                    sigmaX: 7.0,
                    sigmaY: 7.0,
                  ),
                  child: current,
                );
              }

              return ClipRRect(
                borderRadius: BorderRadius.circular(3 * devScale),
                child: current,
              );
            },
          ),
        ),
      ),
    );
  }
}
