enum SearchStepType {
  branch,
  faculty,
  department,
  group,
}

extension SearchStepTypeExtension on SearchStepType {
  bool get isBranch => this == SearchStepType.branch;

  bool get isFaculty => this == SearchStepType.faculty;

  bool get isDepartment => this == SearchStepType.department;

  bool get isGroup => this == SearchStepType.group;
}
