import 'package:flutter/material.dart';

import 'package:bbmstu_app/src/dev/dev_actions.dart';

class DeveloperModeSecurity {
  final BuildContext context;
  int counter = 0;

  DeveloperModeSecurity(this.context);

  void setCounter(int code) {
    if (counter == 0 && code == 1) {
      counter++;
    } else if (counter == 1 && code == 0) {
      counter++;
    } else if (counter == 2 && code == 1) {
      counter = 0;
      showDialog<void>(
        context: context,
        builder: (context) => const DevActions(),
      );
    } else {
      counter = 0;
    }
  }
}
