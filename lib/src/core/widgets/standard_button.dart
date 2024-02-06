import 'package:bbmstu_app/main.dart';
import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:flutter/material.dart';

abstract class StandardButton extends StatelessWidget {
  const factory StandardButton({
    Key? key,
    required Widget child,
    Color? color,
    BorderRadius? borderRadius,
    VoidCallback? onTap,
    bool hasShadowIfLight,
  }) = _StandardButton;

  factory StandardButton.navigateNext({
    Key? key,
    Color? color,
    BorderRadius? borderRadius,
    VoidCallback? onTap,
    bool hasShadowIfLight = false,
    required Widget child,
  }) {
    return _StandardButton(
      key: key,
      color: color,
      borderRadius: borderRadius,
      onTap: onTap,
      hasShadowIfLight: hasShadowIfLight,
      child: _NavigateNextWrap(
        child: child,
      ),
    );
  }

  factory StandardButton.iconTextNavigate({
    Key? key,
    Color? color,
    BorderRadius? borderRadius,
    VoidCallback? onTap,
    bool hasShadowIfLight = false,
    IconData? leftIcon,
    required String caption,
    TextStyle? captionStyle,
    String? additional,
    TextStyle? additionalStyle,
  }) {
    return _StandardButton(
      key: key,
      color: color,
      borderRadius: borderRadius,
      onTap: onTap,
      hasShadowIfLight: hasShadowIfLight,
      child: _IconsWrap(
        rightIcon: leftIcon,
        child: _ButtonText(
          caption: caption,
          captionStyle: captionStyle,
          additional: additional,
          additionalStyle: additionalStyle,
        ),
      ),
    );
  }
}

class _StandardButton extends StatelessWidget implements StandardButton {
  final Widget child;
  final Color? color;
  final BorderRadius? borderRadius;
  final VoidCallback? onTap;

  /// Add shadow if light theme
  final bool hasShadowIfLight;

  const _StandardButton({
    Key? key,
    required this.child,
    this.color,
    this.borderRadius,
    this.onTap,
    this.hasShadowIfLight = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final globalTheme = context.theme;
    final theme = globalTheme.standardThemes.buttonTheme;
    final hasShadow = hasShadowIfLight && globalTheme.isLight;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: color ?? theme.backgroundColor,
        borderRadius: borderRadius,
        boxShadow: hasShadow
            ? [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2 * devScale,
                  blurRadius: 4 * devScale,
                ),
              ]
            : null,
      ),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          splashColor: theme.splashColor,
          borderRadius: borderRadius,
          onTap: onTap,
          splashFactory: const _CustomSplashFactory(),
          child: child,
        ),
      ),
    );
  }
}

class _IconsWrap extends StatelessWidget {
  final Widget child;
  final IconData? rightIcon;

  const _IconsWrap({
    Key? key,
    required this.child,
    this.rightIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.standardThemes.buttonTheme;
    return Padding(
      padding: EdgeInsets.only(
        left: 15 * devScale,
        top: 4 * devScale,
        right: 3 * devScale,
        bottom: 4 * devScale,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (rightIcon != null)
            _RightIcon(
              icon: rightIcon!,
              color: theme.iconColor,
            ),
          child,
          const Spacer(),
          Icon(
            Icons.navigate_next,
            size: 40 * devScale,
            color: theme.iconColor,
          ),
        ],
      ),
    );
  }
}

class _NavigateNextWrap extends StatelessWidget {
  final Widget child;

  const _NavigateNextWrap({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.standardThemes.buttonTheme;
    return Row(
      children: [
        Expanded(
          child: child,
        ),
        Icon(
          Icons.navigate_next,
          size: 40 * devScale,
          color: theme.iconColor,
        ),
      ],
    );
  }
}

class _RightIcon extends StatelessWidget {
  final IconData icon;
  final Color color;

  const _RightIcon({Key? key, required this.icon, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 35 * devScale,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Icon(
          icon,
          size: 22 * devScale,
          color: color,
        ),
      ),
    );
  }
}

class _ButtonText extends StatelessWidget {
  final String caption;
  final TextStyle? captionStyle;
  final String? additional;
  final TextStyle? additionalStyle;

  const _ButtonText({
    Key? key,
    required this.caption,
    this.captionStyle,
    this.additional,
    this.additionalStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.standardThemes.buttonTheme;

    if (additional == null) {
      return Text(
        caption,
        style: captionStyle ?? theme.captionTextStyle,
      );
    }

    return FittedBox(
      fit: BoxFit.scaleDown,
      child: RichText(
        maxLines: 1,
        text: TextSpan(
          text: caption,
          style: captionStyle ?? theme.captionTextStyle,
          children: <TextSpan>[
            TextSpan(
              text: ' ' + additional!,
              style: additionalStyle ?? theme.additionalStyle,
            ),
          ],
        ),
      ),
    );
  }
}

class _CustomSplashFactory implements InteractiveInkFeatureFactory {
  const _CustomSplashFactory();

  @override
  InteractiveInkFeature create({
    required MaterialInkController controller,
    required RenderBox referenceBox,
    required Offset position,
    required Color color,
    required TextDirection textDirection,
    bool containedInkWell = false,
    RectCallback? rectCallback,
    BorderRadius? borderRadius,
    ShapeBorder? customBorder,
    double? radius,
    VoidCallback? onRemoved,
  }) {
    return _CustomSplash(
      borderRadius: borderRadius,
      controller: controller,
      referenceBox: referenceBox,
      color: color,
      onRemoved: onRemoved,
    );
  }
}

const Duration _kFadeInDuration = Duration(milliseconds: 100);
const Duration _kFadeOutDuration = Duration(milliseconds: 375);
const Duration _kCancelDuration = Duration(milliseconds: 375);

class _CustomSplash extends InteractiveInkFeature {
  final BorderRadius? borderRadius;
  late Animation<int> _fadeIn;
  late AnimationController _fadeInController;

  late Animation<int> _fadeOut;
  late AnimationController _fadeOutController;

  _CustomSplash({
    this.borderRadius,
    required MaterialInkController controller,
    required RenderBox referenceBox,
    required Color color,
    VoidCallback? onRemoved,
  }) : super(
          controller: controller,
          referenceBox: referenceBox,
          color: color,
          onRemoved: onRemoved,
        ) {
    _fadeInController =
        AnimationController(duration: _kFadeInDuration, vsync: controller.vsync)
          ..addListener(controller.markNeedsPaint)
          ..forward();

    _fadeIn = _fadeInController.drive(IntTween(
      begin: 0,
      end: color.alpha,
    ));

    _fadeOutController = AnimationController(
        duration: _kFadeOutDuration, vsync: controller.vsync)
      ..addListener(controller.markNeedsPaint)
      ..addStatusListener(_handleAlphaStatusChanged);

    _fadeOut = _fadeOutController.drive(IntTween(
      begin: color.alpha,
      end: 0,
    ));

    controller.addInkFeature(this);
  }

  @override
  void confirm() {
    _fadeInController.forward();
    _fadeOutController.animateTo(1.0, duration: _kFadeOutDuration);
  }

  @override
  void cancel() {
    _fadeInController.stop();
    // Watch out: setting _fadeOutController's value to 1.0 will
    // trigger a call to _handleAlphaStatusChanged() which will
    // dispose _fadeOutController.
    final fadeOutValue = 1.0 - _fadeInController.value;
    _fadeOutController.value = fadeOutValue;
    if (fadeOutValue < 1.0) {
      _fadeOutController.animateTo(1.0, duration: _kCancelDuration);
    }
  }

  void _handleAlphaStatusChanged(AnimationStatus status) {
    if (status == AnimationStatus.completed) {
      dispose();
    }
  }

  @override
  void paintFeature(Canvas canvas, Matrix4 transform) {
    final alpha =
        _fadeInController.isAnimating ? _fadeIn.value : _fadeOut.value;
    final paint = Paint()..color = color.withAlpha(alpha);
    final rect = referenceBox.paintBounds;

    if (borderRadius != null) {
      final rrect = borderRadius!.toRRect(rect);
      canvas.drawRRect(rrect, paint);
    } else {
      canvas.drawRect(rect, paint);
    }
  }

  @override
  void dispose() {
    _fadeInController.dispose();
    _fadeOutController.dispose();
    super.dispose();
  }
}
