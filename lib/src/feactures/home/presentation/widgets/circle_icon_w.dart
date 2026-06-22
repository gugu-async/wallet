import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CircleIconW extends StatelessWidget {
  final String icon;
  final double? size;
  final double? padding;
  final Color? color;
  final Color? iconColor;
  final Color? borderColor;
  final double? borderSize;

  const CircleIconW(
      {super.key,
      required this.icon,
      this.size = 20,
      this.padding = 10,
      this.color,
      this.iconColor,
      this.borderColor,
      this.borderSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .all(padding!),
      decoration: BoxDecoration(
          shape: .circle,
          color: color ?? Theme.of(context).canvasColor,
          border: borderColor != null && borderSize != null
              ? Border.all(color: borderColor!, width: borderSize!)
              : null),
      child: SvgPicture.asset(
        icon,
        height: size,
        colorFilter: ColorFilter.mode(
            iconColor ?? Theme.of(context).iconTheme.color!, .srcIn),
      ),
    );
  }
}
