import 'package:bbmstu_app/src/features/schedule/models/whom.dart';

class WhomViewModel implements Comparable {
  final Whom whom;

  WhomViewModel(this.whom);

  String get name => whom.customName.isNotEmpty ? whom.customName : whom.name;

  @override
  int compareTo(other) => name.compareTo(other._name);
}