import 'package:bbmstu_app/src/core/network/widgets/network_scope.dart';
import 'package:bbmstu_app/src/dev/change_path_dialog.dart';
import 'package:bbmstu_app/main.dart';
import 'package:flutter/material.dart';

class DevActions extends StatelessWidget {
  const DevActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        color: Colors.white,
        width: 200 * devScale,
        child: Wrap(
          children: [
            GestureDetector(
              onTap: () => changeUrl(context),
              child: Container(
                height: 100 * devScale,
                alignment: Alignment.center,
                child: Text(
                  'Сменить ссылку',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20 * devScale,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> changeUrl(BuildContext context) async {
    final result = await showDialog<PathDialogResult>(
      context: context,
      builder: (context) => const PathDialog(originalText: ''),
    );

    if (result == null) {
      return;
    }

    result.action.whenOrNull(
      save: () => NetworkScope.overrideUrl(context, baseUrl: result.value),
      reset: () => NetworkScope.deleteUrlOverride(context),
    );

    showChanged(context);
  }

  void showChanged(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text('Изменено'),
      ),
    );
  }
}
