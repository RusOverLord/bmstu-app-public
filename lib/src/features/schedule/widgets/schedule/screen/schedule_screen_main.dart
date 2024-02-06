part of 'schedule_screen.dart';

@immutable
class ScheduleScreenMain extends StatelessWidget {
  const ScheduleScreenMain({
    Key? key,
  })  : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scheduleUuid = AuthorizationScope.watchMainScheduleUuid(context);

    if (scheduleUuid == null) {
      return const _ScheduleScreenEmpty();
    }

    return ScheduleContextScope(
      value: ScheduleContext(
        scheduleUuid: scheduleUuid,
        screenType: ScheduleScreenType.main,
      ),
      child: const _ScheduleScreen(),
    );
  }
}

@immutable
class _ScheduleScreenEmpty extends StatelessWidget {
  const _ScheduleScreenEmpty({
    Key? key,
  })  : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: StandardAppBar.title(),
      body: const _EmptyStateView(),
    );
  }
}

@immutable
class _ScheduleScreen extends StatelessWidget {
  const _ScheduleScreen({
    Key? key,
  })  : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScheduleBlocScope(
      child: Scaffold(
        appBar: const ScheduleAppBarMain(),
        body: _BlocStateBuilder(
          buildData: () => const _DataStateMainView(),
        ),
      ),
    );
  }
}

@immutable
class _DataStateMainView extends StatefulWidget {
  const _DataStateMainView({
    Key? key,
  }) : super(key: key);

  @override
  _DataStateMainViewState createState() => _DataStateMainViewState();
}

class _DataStateMainViewState extends State<_DataStateMainView> with SingleTickerProviderStateMixin {
  late final _tabController = TabController(vsync: this, length: 2);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 24 * devScale,
            bottom: 15 * devScale,
          ),
          child: _TabBar(
            tabController: _tabController,
          ),
        ),
        Expanded(
          child: _TabBarView(
            tabController: _tabController,
          ),
        )
      ],
    );
  }
}

@immutable
class _TabBar extends StatelessWidget {
  final TabController tabController;

  const _TabBar({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StandardTabBar(
      tabs: const ['Расписание', 'Личный кабинет'],
      tabController: tabController,
    );
  }
}

@immutable
class _TabBarView extends StatelessWidget {
  final TabController tabController;

  const _TabBarView({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      physics: const NeverScrollableScrollPhysics(),
      controller: tabController,
      children: const [
        WeekPageViewSliver(
          bar: WeekPageView(),
          body: ScheduleDaysPageView(),
        ),
        TeaserView(
          description: 'Скоро здесь будет информация о вашей успеваемости',
        ),
      ],
    );
  }
}
