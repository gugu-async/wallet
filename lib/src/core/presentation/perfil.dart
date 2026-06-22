import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wallet/src/core/assets/app_assets.dart';
import 'package:wallet/src/core/utils/state/riverpod.dart';

class Perfil extends ConsumerWidget {
  final double size;
  final Color? color;
  const Perfil({super.key, required this.size, this.color});

  @override
  Widget build(BuildContext context, ref) {
    return GestureDetector(
      onTap: () =>
          ref.read(isDarkModeProvider.notifier).update((state) => !state),
      child: Container(
        padding: .all(3),
        decoration: BoxDecoration(
          color: color ?? Theme.of(context).canvasColor,
          shape: .circle,
        ),
        child: Container(
          height: 44,
          width: 44,
          decoration: BoxDecoration(
            shape: .circle,
            image: DecorationImage(image: AssetImage(AppAssets.perfil1)),
          ),
        ),
      ),
    );
  }
}
