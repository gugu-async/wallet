import 'package:flutter/material.dart';
import 'package:wallet/src/core/assets/app_assets.dart';

class AvatarW extends StatelessWidget {
  final String? image;
  final double? size;
  final double? marginLeft;
  final double? padding;
  const AvatarW({
    super.key,
    this.image,
    this.size = 40,
    this.marginLeft = 10,
    this.padding = 3,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: .only(left: marginLeft!),
      padding: .all(padding!),
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
        shape: .circle,
      ),
      child: ClipRRect(
        borderRadius: .circular(100),
        child: Image.asset(image ?? AppAssets.perfil2, height: size),
      ),
    );
  }
}
