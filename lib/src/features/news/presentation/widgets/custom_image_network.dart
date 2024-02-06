import 'package:bbmstu_app/main.dart';
import 'package:flutter/material.dart';

class CustomImageNetwork extends StatelessWidget {
  final String imageUrl;

  const CustomImageNetwork({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (imageUrl.isEmpty) {
      return const SizedBox();
    }
    return Image.network(
      imageUrl,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) {
          return child;
        } else {
          return Container(
            height: 180.0 * devScale,
            alignment: Alignment.center,
            child: CircularProgressIndicator(
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.grey),
              value: loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!,

              ///TODO: check
            ),
          );
        }
      },
    );
  }
}
