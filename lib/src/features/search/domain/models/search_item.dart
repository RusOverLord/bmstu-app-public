import 'package:equatable/equatable.dart';

import 'search_step_type.dart';

class SearchItem extends Equatable {
  final String caption;
  final String additional;
  final String uuid;
  final SearchStepType searchStepType;

  const SearchItem({
    required this.caption,
    required this.additional,
    required this.uuid,
    required this.searchStepType,
  });

  @override
  List<Object?> get props => [
        caption,
        additional,
        uuid,
        searchStepType,
      ];
}
