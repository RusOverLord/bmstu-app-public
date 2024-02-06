import 'package:bbmstu_app/src/core/widgets/scopes/bloc_base_state_scope.dart';
import 'package:bbmstu_app/src/core/widgets/scopes/value_scope.dart';
import 'package:bbmstu_app/src/features/bmstu_id_onboarding/data/onboarding_repository.dart';
import 'package:bbmstu_app/src/features/bmstu_id_onboarding/domain/bloc/bmstu_id_onboarding_cubit.dart';
import 'package:flutter/material.dart';

typedef _Cubit = BmstuIdOnboardingCubit;

typedef _State = BmstuIdOnboardingState;

typedef _BlocScope = ValueScope<_Cubit>;

typedef _StateScope = BlocBaseStateScope<_Cubit, _State>;

class BmstuIdOnboardingScope extends StatefulWidget {
  final Widget child;

  const BmstuIdOnboardingScope({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  State<BmstuIdOnboardingScope> createState() => _BmstuIdOnboardingScopeState();

  static _State watch(BuildContext context) => ValueScope.watch<_State>(context);

  static _State read(BuildContext context) => ValueScope.read<_State>(context);

  static _Cubit watchBloc(BuildContext context) => ValueScope.watch<_Cubit>(context);

  static _Cubit readBloc(BuildContext context) => ValueScope.read<_Cubit>(context);
}

class _BmstuIdOnboardingScopeState extends State<BmstuIdOnboardingScope> {
  late _Cubit _bloc;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _bloc = BmstuIdOnboardingCubit(
      initialState: const BmstuIdOnboardingState.loading(),
      repository: OnboardingRepository(),
    );
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _BlocScope(
      value: _bloc,
      child: _StateScope(
        child: widget.child,
      ),
    );
  }
}
