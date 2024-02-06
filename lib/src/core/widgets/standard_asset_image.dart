// ignore_for_file: constant_identifier_names

import 'package:bbmstu_app/src/core/themes/widgets/theme_scope.dart';
import 'package:flutter/material.dart';

enum ImageAsset {
  background,
  bmstu,
  empty_search,
  empty_schedule,
  gear,
  intro_1,
  intro_3,
  intro_4,
  cc_intro,
  intro_bmstu_id_2,
  user_type_student,
  user_type_employee,
  services_1,
  make_an_appointment,
  medical_insurance,
  references,
  rules_of_migration_registration,
  qr_authorization,
  personal_data_permission,
}

extension ImageAssetExtension on ImageAsset {
  String getAsset() => 'assets/images/$name.png';

  String getAssetThemed(BuildContext context) {
    final name = context.theme.isLight ? this.name : this.name + '_dark';
    return 'assets/images/$name.png';
  }
}

class StandardAssetImage extends StatelessWidget {
  final ImageAsset imageAsset;
  final bool themed;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final AlignmentGeometry alignment;

  const StandardAssetImage({
    Key? key,
    required this.imageAsset,
    this.themed = false,
    this.width,
    this.height,
    this.fit,
    this.alignment = Alignment.center,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      image: AssetImage(_getAsset(context)),
    );
  }

  String _getAsset(BuildContext context) => themed ? imageAsset.getAssetThemed(context) : imageAsset.getAsset();
}
