import 'package:bbmstu_app/src/features/first_open/first_open.dart';
import 'package:flutter/material.dart';

import 'authorization_scope.dart';

class UserTypeChecker extends StatelessWidget {
  final Widget child;

  const UserTypeChecker({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = AuthorizationScope.watch(context);

    if (state.userType == null) {
      return const UserTypePicker();
    }

    return child;
  }
}
