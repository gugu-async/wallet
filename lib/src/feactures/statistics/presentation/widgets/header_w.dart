import 'package:flutter/material.dart';

class HeaderW extends StatelessWidget {
  final String titleRight;
  final String titleLeft;
  const HeaderW({super.key, required this.titleRight, required this.titleLeft});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            titleRight,
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold),
          ),
          Text(titleLeft, style: Theme.of(context).textTheme.bodyMedium),
        ],
      ),
    );
  }
}
