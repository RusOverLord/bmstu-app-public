part of 'schedule_screen.dart';

Future<void> pushScheduleDialog(BuildContext context, String scheduleUuid) {
  return Navigator.of(context).push<void>(
    MaterialPageRoute(
      settings: const RouteSettings(name: 'ScheduleDialogScreen'),
      builder: (context) {
        return SafeArea(
          child: ScheduleScreenDialog(
            scheduleUuid: scheduleUuid,
          ),
        );
      },
    ),
  );
}

@immutable
class ScheduleScreenDialog extends StatelessWidget {
  final String scheduleUuid;

  const ScheduleScreenDialog({
    Key? key,
    required this.scheduleUuid,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScheduleContextScope(
      value: ScheduleContext(
        scheduleUuid: scheduleUuid,
        screenType: ScheduleScreenType.favorite,
      ),
      child: ScheduleBlocScope(
        child: Scaffold(
          appBar: const ScheduleAppBarDialog(),
          body: _BlocStateBuilder(
            buildData: () => const _DataStateDialogView(),
          ),
        ),
      ),
    );
  }
}

@immutable
class _DataStateDialogView extends StatelessWidget {
  const _DataStateDialogView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WeekPageViewSliver(
      bar: _TransitionAnimation(
        position: _weekBarTransition,
        child: Padding(
          padding: EdgeInsets.only(
            top: 15 * devScale,
          ),
          child: const WeekPageView(),
        ),
      ),
      body: _TransitionAnimation(
        position: _lessonListsTransition,
        child: const ScheduleDaysPageView(),
      ),
    );
  }
}

final _weekBarTransition = Tween<Offset>(
  begin: const Offset(1.0, 0),
  end: const Offset(0, 0),
);
final _lessonListsTransition = Tween<Offset>(
  begin: const Offset(2.0, 0),
  end: const Offset(0, 0),
);
const _duration = Duration(milliseconds: 800);
const _curve = Curves.easeOutQuint;

class _TransitionAnimation extends StatefulWidget {
  final Widget child;
  final Tween<Offset> position;

  const _TransitionAnimation({
    Key? key,
    required this.child,
    required this.position,
  }) : super(key: key);

  @override
  State<_TransitionAnimation> createState() => _TransitionAnimationState();
}

class _TransitionAnimationState extends State<_TransitionAnimation> with SingleTickerProviderStateMixin {
  late final _controller = AnimationController(vsync: this, duration: _duration)..forward();
  late final _animation = widget.position.chain(CurveTween(curve: _curve)).animate(_controller);

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: widget.child,
    );
  }
}
