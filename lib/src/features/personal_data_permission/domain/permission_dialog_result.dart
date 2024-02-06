enum PermissionDialogResult {
  agree,
  disagree,
}

extension PermissionDialogResultExtension on PermissionDialogResult {
  bool get isAgree => this == PermissionDialogResult.agree;

  bool get isDisagree => this == PermissionDialogResult.disagree;
}
