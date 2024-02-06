enum UserType {
  student,
  employee,
}

extension UserTypeExtension on UserType {
  bool get isStudent => this == UserType.student;

  bool get isEmployee => this == UserType.employee;
}
