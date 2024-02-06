import 'package:bbmstu_app/main.dart';
import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<void> showStandardTimePicker({
  required BuildContext context,
  required ValueChanged<Duration> onTimerDurationChanged,
  Duration? initialTimerDuration,
}) {
  return showModalBottomSheet(
    context: context,
    builder: (context) => StandardTimePicker(
      initialTimerDuration: initialTimerDuration,
      onTimerDurationChanged: onTimerDurationChanged,
    ),
  );
}

class StandardTimePicker extends StatelessWidget {
  final ValueChanged<Duration> onTimerDurationChanged;
  late final Duration initialTimerDuration;

  StandardTimePicker({
    Key? key,
    required this.onTimerDurationChanged,
    Duration? initialTimerDuration,
  }) : super(key: key) {
    if (initialTimerDuration == null) {
      final now = TimeOfDay.now();
      this.initialTimerDuration =
          Duration(hours: now.hour, minutes: now.minute);
    } else {
      this.initialTimerDuration = initialTimerDuration;
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.standardThemes.timePickerTheme;
    return SizedBox(
      height: 200 * devScale,
      child: CupertinoTheme(
        data: CupertinoThemeData(
          textTheme: CupertinoTextThemeData(
            pickerTextStyle: theme.textStyle,
          ),
        ),
        child: CupertinoTimerPicker(
          mode: CupertinoTimerPickerMode.hm,
          initialTimerDuration: initialTimerDuration,
          onTimerDurationChanged: onTimerDurationChanged,
        ),
      ),
    );
  }
}
