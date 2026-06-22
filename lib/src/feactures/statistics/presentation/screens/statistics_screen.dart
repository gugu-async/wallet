import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wallet/src/core/assets/app_assets.dart';
import 'package:wallet/src/feactures/statistics/presentation/widgets/header_w.dart';
import 'package:wallet/src/core/presentation/perfil.dart';
import 'package:wallet/src/feactures/statistics/presentation/widgets/bar_chart_w.dart';
import 'package:wallet/src/feactures/statistics/presentation/widgets/filter_option_w.dart';
import 'package:wallet/src/feactures/statistics/presentation/widgets/list_transactions_w.dart';
import 'package:wallet/src/feactures/home/presentation/widgets/circle_icon_w.dart';

class StatisticsScreen extends StatelessWidget {
  final Color cardColor;
  const StatisticsScreen({super.key, required this.cardColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: .all(10),
          child: Column(
            children: [
              Row(
                spacing: 10,
                children: [
                  GestureDetector(
                    onTap: () => context.go('/wallet', extra: cardColor),
                    child: CircleIconW(icon: AppAssets.arrowLeft,size: 18,),
                  ),
                  const Expanded(child: SizedBox()),
                  CircleIconW(icon: AppAssets.add),
                  const Perfil(size: 40),
                ],
              ),
              const HeaderW(titleRight: "Wallet Statics", titleLeft: "Filter"),
              const FilterOptionW(),
              BarChartW(color: cardColor),
              ListTransactionsW(cardColor),
            ],
          ),
        ),
      ),
    );
  }
}
