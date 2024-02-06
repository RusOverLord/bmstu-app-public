import 'package:bbmstu_app/src/core/widgets/indent.dart';
import 'package:bbmstu_app/src/core/widgets/scopes/value_scope.dart';
import 'package:bbmstu_app/src/core/widgets/standard_icons.dart';
import 'package:bbmstu_app/main.dart';
import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:flutter/material.dart';

const _appBarHeight = 50.0;
const _boxPadding = 20.0;
const _actionPadding = 8.0;

class StandardAppBarThemeData {
  final IconThemeData? leadingTheme;
  final IconThemeData? actionTheme;
  final TextStyle? titleStyle;

  StandardAppBarThemeData({
    this.leadingTheme,
    this.actionTheme,
    this.titleStyle,
  });

  StandardAppBarThemeData copyWith({
    IconThemeData? leadingTheme,
    IconThemeData? actionTheme,
    TextStyle? titleStyle,
  }) {
    return StandardAppBarThemeData(
      leadingTheme: leadingTheme ?? this.leadingTheme,
      actionTheme: actionTheme ?? this.actionTheme,
      titleStyle: titleStyle ?? this.titleStyle,
    );
  }

  StandardAppBarThemeData merge(StandardAppBarThemeData? other) {
    if (other == null) return this;
    return copyWith(
      leadingTheme: other.leadingTheme,
      actionTheme: other.actionTheme,
      titleStyle: other.titleStyle,
    );
  }
}

typedef _Data = StandardAppBarThemeData;

typedef _DataScope = ValueScope<_Data>;

@immutable
class StandardAppBarTheme extends StatelessWidget {
  final Widget child;
  final _Data? data;

  const StandardAppBarTheme({
    Key? key,
    required this.child,
    this.data,
  }) : super(key: key);

  static _Data watch(BuildContext context) => ValueScope.watch<_Data>(context);

  @override
  Widget build(BuildContext context) {
    final iconTheme = IconThemeData(
      size: 22 * devScale,
      color: context.theme.appBarTheme.iconColor,
    );

    return _DataScope(
      value: _Data(
        leadingTheme: iconTheme,
        actionTheme: iconTheme,
        titleStyle: context.theme.appBarTheme.mainTextStyle,
      ).merge(data),
      child: IconTheme.merge(
        data: iconTheme,
        child: child,
      ),
    );
  }
}

extension on BuildContext {
  _Data get appBarTheme => _DataScope.watch(this);
}

mixin StandardAppBarSizeMixin implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(_appBarHeight * devScale);
}

@immutable
class StandardAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? child;
  final double? height;
  final bool showDivider;
  final bool showPop;
  final Widget? action;
  final StandardAppBarThemeData? theme;

  const StandardAppBar({
    Key? key,
    this.child,
    this.height,
    this.showDivider = true,
    this.showPop = true,
    this.action,
    this.theme,
  }) : super(key: key);

  StandardAppBar.title({
    Key? key,
    String? title,
    Widget? action,
    StandardAppBarThemeData? theme,
  }) : this(
          key: key,
          child: _Title(
            text: title,
          ),
          action: action,
          theme: theme,
        );

  @override
  Size get preferredSize => Size.fromHeight(height ?? _appBarHeight * devScale);

  double _getActionPadding(bool hasAction) => (hasAction ? _boxPadding - _actionPadding : _boxPadding) * devScale;

  @override
  Widget build(BuildContext context) {
    final showPop = this.showPop ? ModalRoute.of(context)?.canPop ?? false : false;
    final hasAction = action != null;

    Widget current = child ?? const SizedBox.shrink();

    if (showPop || hasAction) {
      current = Row(
        children: [
          if (showPop) const PopButton.back(),
          if (showPop) const _ActionIndent(),
          Expanded(child: current),
          if (hasAction) const _ActionIndent(),
          if (hasAction) action!,
        ],
      );
    } else {
      current = Align(
        alignment: Alignment.centerLeft,
        child: current,
      );
    }

    current = Padding(
      padding: EdgeInsets.only(
        left: _getActionPadding(showPop),
        right: _getActionPadding(hasAction),
      ),
      child: current,
    );

    if (showDivider) {
      current = AppBarDivider(
        child: current,
      );
    }

    return StandardAppBarTheme(
      data: theme,
      child: SizedBox(
        height: preferredSize.height,
        child: current,
      ),
    );
  }
}

@immutable
class AppBarDivider extends StatelessWidget {
  final Widget child;

  const AppBarDivider({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.appBarTheme;
    return Column(
      children: <Widget>[
        Expanded(
          child: child,
        ),
        Divider(
          color: theme.dividerColor,
          height: 1 * devScale,
        ),
      ],
    );
  }
}

@immutable
class AppBarAction extends StatelessWidget {
  final Widget child;
  final GestureTapCallback? onTap;
  final EdgeInsets? padding;

  const AppBarAction({
    Key? key,
    required this.child,
    this.onTap,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Material(
        color: Colors.transparent,
        type: MaterialType.button,
        child: Padding(
          padding: padding ?? EdgeInsets.all(_actionPadding * devScale),
          child: child,
        ),
      ),
    );
  }
}

@immutable
class IconAction extends StatelessWidget {
  final IconData icon;
  final GestureTapCallback? onTap;

  const IconAction({
    Key? key,
    required this.icon,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBarAction(
      onTap: onTap,
      child: Icon(icon),
    );
  }
}

@immutable
class _ActionIndent extends StatelessWidget {
  const _ActionIndent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Indent.horizontal(_actionPadding * devScale);
}

@immutable
abstract class PopButton extends StatelessWidget {
  const factory PopButton.back({Key? key}) = _PopButtonBack;

  const factory PopButton.close({Key? key}) = _PopButtonClose;
}

@immutable
class _PopButtonBack extends StatelessWidget implements PopButton {
  const _PopButtonBack({
    Key? key,
  })  : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconTheme.merge(
      data: context.appBarTheme.leadingTheme!,
      child: IconAction(
        onTap: Navigator.of(context).pop,
        icon: StandardIcons.navigate_back,
      ),
    );
  }
}

@immutable
class _PopButtonClose extends StatelessWidget implements PopButton {
  const _PopButtonClose({
    Key? key,
  })  : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconTheme.merge(
      data: context.appBarTheme.actionTheme!,
      child: IconAction(
        onTap: Navigator.of(context).pop,
        icon: StandardIcons.close,
      ),
    );
  }
}

@immutable
class _Title extends StatelessWidget {
  final String? text;

  const _Title({
    Key? key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final text = this.text;

    if (text == null) return const SizedBox.shrink();

    return Text(
      text,
      style: context.appBarTheme.titleStyle,
    );
  }
}
