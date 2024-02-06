import 'package:bbmstu_app/main.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/schedule/screen/schedule_screen.dart';
import 'package:bbmstu_app/src/features/schedule/widgets/scopes/favorites_bloc_scope.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:bbmstu_app/src/core/widgets/standard_icons.dart';
import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:bbmstu_app/src/core/widgets/standard_button.dart';
import 'package:bbmstu_app/src/features/schedule/models/whom.dart';

const _resizeDuration = Duration(milliseconds: 300);

@immutable
class FavoritesItemView extends StatelessWidget {
  final Whom item;

  const FavoritesItemView({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _AnimatedPadding(
      child: _Slidable(
        item: item,
      ),
    );
  }
}

@immutable
class _AnimatedPadding extends StatefulWidget {
  final Widget child;

  const _AnimatedPadding({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  State<_AnimatedPadding> createState() => _AnimatedPaddingState();
}

class _AnimatedPaddingState extends State<_AnimatedPadding> {
  bool _dismissed = false;

  void dismiss() => setState(() => _dismissed = true);

  @override
  Widget build(BuildContext context) {
    return AnimatedPadding(
      padding: _dismissed ? EdgeInsets.zero : EdgeInsets.symmetric(vertical: 1 * devScale),
      duration: _resizeDuration,
      child: widget.child,
    );
  }
}

@immutable
class _Slidable extends StatelessWidget {
  static final controller = SlidableController();
  final Whom item;

  _Slidable({
    required this.item,
  }) : super(key: UniqueKey());

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: key,
      controller: controller,
      actionPane: const SlidableDrawerActionPane(),
      actionExtentRatio: 0.18,
      dismissal: SlidableDismissal(
        resizeDuration: _resizeDuration,
        onResize: context.findAncestorStateOfType<_AnimatedPaddingState>()?.dismiss,
        onDismissed: (actionType) => FavoritesBlocScope.removeFromFavorites(context, item: item),
        dragDismissible: false,
        child: const SlidableDrawerDismissal(),
      ),
      secondaryActions: const <Widget>[
        _DeleteAction(),
      ],
      child: StandardButton.iconTextNavigate(
        caption: item.nameView,
        onTap: () => pushScheduleDialog(context, item.uuid),
      ),
    );
  }
}

@immutable
class _DeleteAction extends StatelessWidget {
  const _DeleteAction({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.favoritesTheme.listTheme.itemTheme;
    return IconSlideAction(
      color: theme.dismissibleBackgroundColor,
      foregroundColor: theme.dismissibleForegroundColor,
      icon: StandardIcons.favorite_delete,
      onTap: () {
        Slidable.of(context)!.dismiss();
      },
    );
  }
}
