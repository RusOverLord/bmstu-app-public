import 'package:bbmstu_app/src/features/search/data/mappers/search_step_type_mapper.dart';
import 'package:bbmstu_app/src/features/search/domain/models/models.dart';
import 'package:bbmstu_app/src/features/search/domain/models/search_item.dart';
import 'package:remote_api/remote_api.dart';

extension ModelsModelSearchUnitMapper on ModelsModelSearchUnit {
  SearchItem toModel() {
    return SearchItem(
      caption: caption ?? '',
      additional: additional ?? '',
      uuid: uuid ?? '',
      searchStepType: type!.convertToSearchStepType(),
    );
  }
}
