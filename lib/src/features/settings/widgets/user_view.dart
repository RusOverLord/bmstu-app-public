import 'package:bbmstu_app/src/core/widgets/indent.dart';
import 'package:bbmstu_app/main.dart';
import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:bbmstu_app/src/features/authorization/widgets/authorization_scope.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@immutable
class UserBuilder extends ConsumerWidget {
  const UserBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final userInfo = AuthorizationScope.watchUser(context);

    if (userInfo == null) {
      return Indent.vertical(5 * devScale);
    }

    return UserView(
      user: userInfo.map(
        student: (student) => UserViewModel(
          name: student.name,
          additional: student.groupName,
        ),
        employee: (employee) => UserViewModel(
          name: employee.name,
          additional: employee.department,
        ),
      ),
    );
  }
}

class UserViewModel {
  final String name;
  final String additional;

  UserViewModel({
    required this.name,
    required this.additional,
  });
}

@immutable
class UserView extends StatelessWidget {
  final UserViewModel user;

  const UserView({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.settingsTheme.studentViewTheme;
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              getName(user.name),
              style: theme.nameTextStyle,
            ),
            Indent.horizontal(8 * devScale),
            Text(
              user.additional,
              style: theme.groupTextStyle,
            ),
          ],
        ),
        Indent.vertical(16 * devScale),
      ],
    );
  }

  String getName(String group) {
    final fio = group.split(' ');
    if (fio.length == 1) {
      return fio[0];
    } else {
      return fio[1];
    }
  }
}
