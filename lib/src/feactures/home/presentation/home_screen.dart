import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:go_router/go_router.dart';
import 'package:wallet/src/core/assets/app_assets.dart';
import 'package:wallet/src/core/presentation/perfil.dart';
import 'package:wallet/src/feactures/home/data/local/card_data_local.dart';
import 'package:wallet/src/feactures/home/data/local/transactions_data_local.dart';
import 'package:wallet/src/feactures/home/data/models/card_model.dart';
import 'package:wallet/src/feactures/home/presentation/widgets/card_w.dart';
import 'package:wallet/src/feactures/home/presentation/widgets/circle_icon_w.dart';
import 'package:wallet/src/feactures/home/presentation/widgets/slive_app_bar_w.dart';
import 'package:wallet/src/feactures/home/presentation/widgets/transaction_w.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  SwiperController swiperController = SwiperController();

  @override
  void dispose() {
    swiperController.dispose();
    super.dispose();
  }

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
                  Expanded(
                    child: Text(
                      "My Wallets",
                      style: Theme.of(
                        context,
                      ).textTheme.headlineSmall!.copyWith(fontWeight: .bold),
                    ),
                  ),
                  CircleIconW(icon: AppAssets.add),
                  const Perfil(size: 40),
                ],
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 10, top: 10),
                  child: Text(
                    "See all",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ),
              Flexible(
                child: Swiper(
                  itemWidth: 400,
                  itemHeight: 200,
                  loop: true,
                  duration: 190,
                  scrollDirection: Axis.vertical,
                  controller: swiperController,
                  itemBuilder: (context, index) {
                    CardModel it = CardData.info[index];
                    return Container(
                      margin: .symmetric(horizontal: 5),
                      child: GestureDetector(
                        child: CardW(data: it),
                        onTap: () => context.go("/wallet", extra: it.color),
                      ),
                    );
                  },
                  itemCount: CardData.info.length,
                  layout: SwiperLayout.STACK,
                ),
              ),
              Expanded(
                child: CustomScrollView(
                  slivers: [
                    const SliverAppBarW(),
                    SliverList(
                      delegate: SliverChildBuilderDelegate((
                        BuildContext context,
                        int index,
                      ) {
                        var it = Transactions.paymentOfServices[index];
                        return TransactionW(
                          icon: it.image,
                          title: it.name,
                          subtitle: it.elapsedTime,
                          amount: it.amount,
                        );
                      }, childCount: Transactions.paymentOfServices.length),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
