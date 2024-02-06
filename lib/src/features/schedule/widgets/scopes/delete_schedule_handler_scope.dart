import 'package:bbmstu_app/src/features/schedule/domain/handlers/delete_schedule_handler.dart';
import 'package:flutter/material.dart';

import 'schedule_di_factory.dart';

typedef _Handler = DeleteScheduleEventHandler;

class DeleteScheduleEventHandlerScope extends StatefulWidget {
  final Widget child;

  const DeleteScheduleEventHandlerScope({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  State<DeleteScheduleEventHandlerScope> createState() => _DeleteScheduleEventHandlerScopeState();
}

class _DeleteScheduleEventHandlerScopeState extends State<DeleteScheduleEventHandlerScope> {
  late _Handler _handler;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _handler = ScheduleDIFactory(context).deleteScheduleEventHandler;
  }

  @override
  void dispose() {
    _handler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.child;
}
