import 'package:bbmstu_app/src/core/widgets/standard_icons.dart';
import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:flutter/material.dart';

@immutable
class HomeBottomBar extends StatelessWidget {
  final ValueChanged<int> onTap;
  final int currentIndex;

  const HomeBottomBar({
    Key? key,
    required this.onTap,
    required this.currentIndex,
  })  : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme.homeTheme.bottomBarTheme;
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      elevation: 0,
      backgroundColor: theme.backgroundColor,
      selectedItemColor: theme.selectedItemColor,
      unselectedItemColor: theme.unselectedItemColor,
      onTap: onTap,
      currentIndex: currentIndex,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            StandardIcons.news,
          ),
          label: '',
          tooltip: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            StandardIcons.search,
          ),
          label: '',
          tooltip: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            StandardIcons.home,
          ),
          label: '',
          tooltip: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            StandardIcons.favorites,
          ),
          label: '',
          tooltip: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            StandardIcons.settings,
          ),
          label: '',
          tooltip: '',
        ),
      ],
    );
  }
}
