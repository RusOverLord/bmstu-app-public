import 'package:bbmstu_app/src/constants/build_number.dart';
import 'package:bbmstu_app/src/constants/pubspec.yaml.g.dart';
import 'package:bbmstu_app/src/core/network/widgets/network_scope.dart';
import 'package:bbmstu_app/src/core/widgets/indent.dart';
import 'package:bbmstu_app/src/core/widgets/standard_asset_image.dart';
import 'package:bbmstu_app/src/dev/security.dart';
import 'package:bbmstu_app/main.dart';
import 'package:bbmstu_app/src/core/widgets/standard_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';

Future<void> showAboutAppDialog(BuildContext context) {
  return Navigator.of(context).push<void>(
    MaterialPageRoute(
      settings: const RouteSettings(name: 'AboutScreen'),
      builder: (context) => const SafeArea(
        child: AboutAppScreen(),
      ),
    ),
  );
}

class AboutAppScreen extends HookWidget {
  const AboutAppScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.settingsTheme.aboutAppTheme;
    final security = DeveloperModeSecurity(context);

    return Scaffold(
      appBar: StandardAppBar.title(
        title: 'О приложении',
      ),
      body: Padding(
        padding: EdgeInsets.all(6 * devScale),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () => security.setCounter(0),
              onLongPress: () => security.setCounter(1),
              child: Padding(
                padding: EdgeInsets.only(
                  left: 120 * devScale,
                  top: 20 * devScale,
                  right: 120 * devScale,
                  bottom: 15 * devScale,
                ),
                child: const StandardAssetImage(
                  imageAsset: ImageAsset.bmstu,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: 20 * devScale,
              ),
              child: Text(
                'Версия $major.$minor.$patch $buildNumber',
                style: theme.textStyle1,
              ),
            ),
            ListTile(
              onTap: () => _launchUrl('https://b.bmstu.ru/policy.pdf'),
              leading: Icon(
                Icons.https,
                color: theme.foregroundColor,
                size: 24 * devScale,
              ),
              title: Text(
                'Политика конфиденциальности',
                style: theme.textStyle2,
              ),
            ),
            ListTile(
              onTap: () => _launchUrl('https://www.bmstu.ru/sveden/consent'),
              leading: Icon(
                Icons.https,
                color: theme.foregroundColor,
                size: 24 * devScale,
              ),
              title: Text(
                'Согласие на обработку персональных данных',
                style: theme.textStyle2,
              ),
            ),
            Indent.vertical(20 * devScale),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 18 * devScale,
              ),
              child: Text(
                'Используя приложение вы даете согласие на обработку персональных данных в соответствии с Федеральным законом "О персональных данных" и соглашаетесь с условиями использования приложения',
                style: theme.textStyle3,
              ),
            ),
            const _BaseUrlIsOverriddenMarker(),
          ],
        ),
      ),
    );
  }

  Future<void> _launchUrl(String uri) async {
    final url = Uri.parse(uri);

    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.inAppWebView);
    }
  }
}

@immutable
class _BaseUrlIsOverriddenMarker extends StatelessWidget {
  const _BaseUrlIsOverriddenMarker({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NetworkScope.watchState(context).baseUrlIsOverridden
        ? Container(
            color: Colors.blue,
            width: double.infinity,
            height: 25 * devScale,
          )
        : const SizedBox(
            height: 0,
          );
  }
}
