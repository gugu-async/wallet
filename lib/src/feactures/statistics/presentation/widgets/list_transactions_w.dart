import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wallet/src/feactures/home/data/local/transactions_data_local.dart';
import 'package:wallet/src/feactures/statistics/presentation/state/filter_option_provider.dart';
import 'package:wallet/src/feactures/home/presentation/widgets/transaction_w.dart';

class ListTransactionsW extends ConsumerWidget {
  final Color color;
  const ListTransactionsW(this.color, {super.key});

  @override
  Widget build(BuildContext context, ref) {
    var selectValue = ref.watch(selectProvider);
    var offsetYValue = ref.watch(offsetY);
    
    return Expanded(
        child: ListView.builder(
      itemCount: Transactions.categoryTransactions[selectValue]!.length,
      itemBuilder: (BuildContext context, int index) {
        var it = Transactions.categoryTransactions[selectValue]![index];
        return AnimatedContainer(
          duration: Duration(milliseconds: 800 + (index * 100)),
          curve: Curves.easeInOut,
          transform: Matrix4.translationValues(offsetYValue, 0, 0),
          child: TransactionW(
            image: it.image,
            title: it.name,
            subtitle: it.elapsedTime,
            amount: it.amount,
            colorAmount: color,
          ),
          onEnd: () => ref.read(offsetY.notifier).update((state) => 0),
        );
      },
    ));
  }
}
