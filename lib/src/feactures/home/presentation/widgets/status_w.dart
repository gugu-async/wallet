import 'package:flutter/material.dart';

class StatusW extends StatelessWidget {
  final String title;
  final String subTitle;
  const StatusW({super.key, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .symmetric(vertical: 10, horizontal: 9),
      width: MediaQuery.of(context).size.width * 0.45,
      decoration: BoxDecoration(
        borderRadius: .circular(10),
        color: Theme.of(context).canvasColor,
      ),
      child: Column(
        mainAxisAlignment: .spaceBetween,
        crossAxisAlignment: .start,
        children: [
          Text(title, style: Theme.of(context).textTheme.bodyLarge),
          Text(
            '\$ $subTitle',
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.copyWith(fontWeight: .bold),
          ),
        ],
      ),
    );
  }
}
