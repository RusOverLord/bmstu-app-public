import 'package:bbmstu_app/main.dart';
import 'package:bbmstu_app/src/core/features/error_label/presentation/widgets/error_label.dart';
import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:bbmstu_app/src/core/widgets/indent.dart';
import 'package:bbmstu_app/src/core/widgets/onboarding/onboarding.dart';
import 'package:bbmstu_app/src/core/widgets/standard_asset_image.dart';
import 'package:bbmstu_app/src/core/widgets/standard_loading_ring.dart';
import 'package:bbmstu_app/src/features/bmstu_id_onboarding/domain/bloc/bmstu_id_onboarding_cubit.dart';
import 'package:bbmstu_app/src/features/bmstu_id_onboarding/domain/models/models.dart';
import 'package:bbmstu_app/src/features/news/presentation/pages/news_full_view.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'bmstu_id_onboarding_scope.dart';

Future<void> showBmstuIdOnboardingDialog(BuildContext context) {
  return Navigator.of(context).push<void>(
    MaterialPageRoute(
      settings: const RouteSettings(name: 'BmstuIdOnboardingScreen'),
      builder: (context) => const SafeArea(
        child: BmstuIdOnboarding(),
      ),
    ),
  );
}

@immutable
class BmstuIdOnboarding extends ConsumerWidget {
  const BmstuIdOnboarding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return BmstuIdOnboardingScope(
      child: Builder(builder: (context) {
        final bloc = BmstuIdOnboardingScope.watchBloc(context);
        return StreamBuilder<BmstuIdOnboardingState>(
          initialData: bloc.state,
          stream: bloc.stream,
          builder: (context, snapshot) {
            final state = snapshot.data!;
            return state.map(
              loading: (loading) => const _BmstuIdOnboardingLoading(),
              idle: (data) => _BmstuIdOnboardingData(items: data.list),
              error: (error) => state.mapList(
                hasNot: () => const _BmstuIdOnboardingError(),
                has: (list) => _BmstuIdOnboardingData(items: list),
              ),
            );
          },
        );
      }),
    );
  }
}

@immutable
class _BmstuIdOnboardingLoading extends StatelessWidget {
  const _BmstuIdOnboardingLoading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: OnboardingAppBar.withClose(),
      body: StandardLoadingRing(),
    );
  }
}

@immutable
class _BmstuIdOnboardingError extends StatelessWidget {
  const _BmstuIdOnboardingError({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: OnboardingAppBar.withClose(),
      body: Align(
        alignment: Alignment.bottomCenter,
        child: ErrorLabel('нет сети'),
      ),
    );
  }
}

@immutable
class _BmstuIdOnboardingData extends StatelessWidget {
  final Iterable<BmstuIdOnboardingItem> items;

  const _BmstuIdOnboardingData({
    Key? key,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Onboarding(
      appBar: const OnboardingAppBar.empty(),
      bottomBar: OnboardingBottomBar(
        onSkip: Navigator.of(context).pop,
      ),
      pages: [
        Intro(
          item: items.first,
          assetImage: const StandardAssetImage(
            imageAsset: ImageAsset.cc_intro,
            themed: true,
          ),
        )
      ],
    );
  }
}

@immutable
class Intro extends StatelessWidget {
  final BmstuIdOnboardingItem item;
  final StandardAssetImage? assetImage;

  const Intro({
    Key? key,
    required this.item,
    this.assetImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.firstOpenTheme.introTheme;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20 * devScale,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              item.title,
              style: theme.textStyle1,
            ),
            if (assetImage != null) assetImage!,
            if (assetImage == null) Indent.vertical(20 * devScale),
            StandardMarkdown(
              markdown: item.description,
            ),
            Indent.vertical(60 * devScale),
          ],
        ),
      ),
    );
  }
}
