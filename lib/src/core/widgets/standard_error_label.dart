import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';

@immutable
class StandardErrorLabel extends StatelessWidget {
  final String message;

  const StandardErrorLabel({
    Key? key,
    required this.message,
  })  : super(key: key);

  const StandardErrorLabel.noConnection({
    Key? key,
  })  : message = 'нет сети', super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.primitivesTheme.alertsTheme;
    return Container(
      width: double.infinity,
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: theme.backgroundGradient,
      ),
      child: Text(
        message,
        style: theme.textStyle,
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) =>
      super.debugFillProperties(
        properties
          ..add(
            StringProperty(
              'description',
              'StandardErrorLabel StatelessWidget',
            ),
          ),
      );
}

