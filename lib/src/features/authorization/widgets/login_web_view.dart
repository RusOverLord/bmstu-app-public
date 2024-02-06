import 'dart:io';

import 'package:bbmstu_app/src/core/analytics.dart';
import 'package:bbmstu_app/src/core/fire_base/widgets/firebase_scope.dart';
import 'package:bbmstu_app/src/core/network/widgets/network_scope.dart';
import 'package:bbmstu_app/src/core/widgets/standard_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'eu_authorization_screen.dart';

const _stylesJS = '''const url = "https://bitop.bmstu.ru/auth-styles.css";
              const rel = "stylesheet";
              const type = "text/css";
              let link = document.createElement('link');
              link.href = url;
              link.rel = rel;
              link.type = type;
              document.getElementsByTagName('head')[0].append(link);''';

class LoginWebView extends StatelessWidget {
  const LoginWebView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: StandardAppBar.title(
          title: 'Авторизация',
        ),
        body: const _LoginWebView(),
      ),
    );
  }
}

@immutable
class _LoginWebView extends StatefulWidget {
  const _LoginWebView({
    Key? key,
  }) : super(key: key);

  @override
  State<_LoginWebView> createState() => __LoginWebViewState();
}

class __LoginWebViewState extends State<_LoginWebView> {
  WebViewController? _controller;

  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    final firebaseToken = FirebaseScope.watchToken(context);
    final baseUrl = NetworkScope.watchBaseUrl(context);
    return WebView(
      initialUrl: '$baseUrl/user/login?firebase_token=$firebaseToken',
      javascriptMode: JavascriptMode.unrestricted,
      gestureNavigationEnabled: true,
      navigationDelegate: (navigationDelegate) async {
        if (navigationDelegate.url.contains('status=ok')) {
          EuAuthorizationScope.updateInfo(context);
        }

        return NavigationDecision.navigate;
      },
      onWebViewCreated: (webViewController) async {
        await IAnalytics.instance.setCurrentScreen(screenName: 'LoginScreen');
        _controller = webViewController;
        // await webViewController.clearCache();
        await CookieManager().clearCookies();
      },
      onPageFinished: (_) => _controller?.runJavascript(_stylesJS),
    );
  }
}
