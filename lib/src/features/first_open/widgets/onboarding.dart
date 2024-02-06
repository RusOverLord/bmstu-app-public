import 'dart:async';
import 'package:bbmstu_app/src/core/widgets/onboarding/onboarding.dart';
import 'package:bbmstu_app/src/core/widgets/onboarding/widgets/onboarding_app_bar.dart';
import 'package:bbmstu_app/src/features/first_open/widgets/start_dating_screen.dart';

import 'package:flutter/material.dart';
import 'package:bbmstu_app/src/features/first_open/widgets/intro_views.dart';

Future<void> showOnboardingStudent(BuildContext context) {
  return _showOnboardingScreen(
    context: context,
    screen: const OnboardingStudent(),
    routeName: 'OnboardingStudent',
  );
}

Future<void> showOnboardingEmployee(BuildContext context) {
  return _showOnboardingScreen(
    context: context,
    screen: const OnboardingEmployee(),
    routeName: 'OnboardingEmployee',
  );
}

Future<void> _showOnboardingScreen({
  required BuildContext context,
  required Widget screen,
  required String routeName,
}) {
  return Navigator.of(context).push<void>(
    MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => screen,
    ),
  );
}

@immutable
class OnboardingStudent extends StatelessWidget {
  const OnboardingStudent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FirstOpenOnboarding(
      pages: [
        ccIntro(),
        timetableIntro(),
        favoritesIntro(),
        newsIntro(),
        const StartDatingScreenStudent(),
      ],
    );
  }
}

@immutable
class OnboardingEmployee extends StatelessWidget {
  const OnboardingEmployee({
    Key? key,
  })  : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FirstOpenOnboarding(
      pages: [
        ccIntro(),
        newsIntro(),
        const StartDatingScreenEmployee(),
      ],
    );
  }
}

@immutable
class FirstOpenOnboarding extends StatelessWidget {
  final List<Widget> pages;

  const FirstOpenOnboarding({
    Key? key,
    required this.pages,
  })  : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Onboarding(
      fixLast: true,
      appBar: const OnboardingAppBar.withBack(),
      bottomBar: const OnboardingBottomBar(
        fadeLast: true,
      ),
      pages: pages,
    );
  }
}
