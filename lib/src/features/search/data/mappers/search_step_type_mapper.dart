import 'package:bbmstu_app/src/core/utility/enum_converter.dart';
import 'package:bbmstu_app/src/features/search/domain/models/models.dart';

extension SearchStepTypeMapper on SearchStepType {
  String convertToString() => const SearchStepTypeConverter().enumToString(this);
}

extension SearchStepTypeMapperString on String {
  SearchStepType convertToSearchStepType() => const SearchStepTypeConverter().enumFromString(this);
}

class SearchStepTypeConverter extends EnumConverter<SearchStepType> {
  const SearchStepTypeConverter();

  @override
  Map<SearchStepType, String> get values => <SearchStepType, String>{
    SearchStepType.branch: 'branch',
    SearchStepType.faculty: 'faculty',
    SearchStepType.department: 'department',
    SearchStepType.group: 'group',
  };
}
