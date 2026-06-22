import 'package:flutter/material.dart';
import 'package:wallet/src/feactures/home/presentation/widgets/status_w.dart';

class SliverAppBarW extends StatelessWidget {
  const SliverAppBarW({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      shadowColor: Theme.of(context).scaffoldBackgroundColor,
      foregroundColor: Theme.of(context).scaffoldBackgroundColor,
      surfaceTintColor: Theme.of(context).scaffoldBackgroundColor,
      expandedHeight: 140,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          margin: .only(bottom: 50),
          child: const Row(
            spacing: 14,
            mainAxisAlignment: .spaceAround,
            children: [
              StatusW(title: 'Total Received', subTitle: '45,987.00'),
              StatusW(title: 'Total Sent', subTitle: '5,987.00'),
            ],
          ),
        ),
        titlePadding: .only(bottom: 5),
        title: Container(
          alignment: .bottomLeft,
          child: Text(
            "Recent Transaction",
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ),
    );
  }
}
