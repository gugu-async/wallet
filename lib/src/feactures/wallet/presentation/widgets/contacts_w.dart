import 'package:flutter/material.dart';
import 'package:wallet/src/core/assets/app_assets.dart';
import 'package:wallet/src/feactures/home/data/local/transactions_data_local.dart';
import 'package:wallet/src/feactures/home/presentation/widgets/avatar_w.dart';
import 'package:wallet/src/feactures/home/presentation/widgets/circle_icon_w.dart';

class ContactsW extends StatelessWidget {
  const ContactsW({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 56,
            child: ListView.builder(
              scrollDirection: .horizontal,
              itemCount: Transactions.transactionsActivities.length,
              itemBuilder: (BuildContext context, int index) {
                var it = Transactions.transactionsActivities[index];
                return Transform.translate(
                  offset: Offset(
                    index == 0 ? 0 : -double.parse((20 * index).toString()),
                    0,
                  ),
                  child: AvatarW(image: it.image, marginLeft: 0, padding: 2.3),
                );
              },
            ),
          ),
        ),
        CircleIconW(
          icon: AppAssets.add,
          borderColor: Theme.of(context).iconTheme.color,
          borderSize: 1,
          color: Theme.of(context).canvasColor,
          size: 22,
          padding: 10,
        ),
      ],
    );
  }
}
