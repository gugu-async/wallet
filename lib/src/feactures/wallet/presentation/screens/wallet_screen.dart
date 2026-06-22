import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:wallet/src/core/assets/app_assets.dart';
import 'package:wallet/src/core/config/app_config.dart';
import 'package:wallet/src/core/presentation/perfil.dart';
import 'package:wallet/src/core/theme/app_colors.dart';
import 'package:wallet/src/feactures/wallet/data/local/operations_data_local.dart';
import 'package:wallet/src/feactures/wallet/presentation/widgets/contacts_w.dart';
import 'package:wallet/src/feactures/home/presentation/widgets/circle_icon_w.dart';

class WalletScreen extends StatelessWidget {
  final Color color;
  const WalletScreen({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: .all(10),
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Row(
                    spacing: 15,
                    children: [
                      GestureDetector(
                        onTap: () => context.go("/"),
                        child: SvgPicture.asset(
                          AppAssets.arrowLeft,
                          height: 20,
                          colorFilter: .mode(AppColors.white, .srcIn),
                        ),
                      ),
                      Perfil(size: 45,color: AppColors.white,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: .start,
                          children: [
                            Opacity(
                              opacity: 0.8,
                              child: Text(
                                'Welcome back',
                                style: Theme.of(context).textTheme.titleSmall!
                                    .copyWith(color: AppColors.white),
                              ),
                            ),
                            Text(
                              'Alexandrio Busan',
                              style: Theme.of(context).textTheme.titleMedium!
                                  .copyWith(
                                    color: AppColors.white,
                                    fontWeight: .bold,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Stack(
                        children: [
                          CircleIconW(
                            icon: AppAssets.notification,
                            color: AppColors.white,
                            iconColor: AppColors.black,
                          ),
                          Positioned.fill(
                            child: Align(
                              alignment: .topRight,
                              child: Container(
                                width: 12,
                                height: 12,
                                decoration: BoxDecoration(
                                  shape: .circle,
                                  color: AppColors.red,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 23),
                  Opacity(
                    opacity: 0.8,
                    child: Text(
                      'Total balance',
                      style: Theme.of(
                        context,
                      ).textTheme.titleMedium!.copyWith(color: AppColors.white),
                    ),
                  ),
                  Padding(
                    padding: .only(top: 8, bottom: 30),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '\$ 238,732',
                            style: Theme.of(context).textTheme.displaySmall!
                                .copyWith(
                                  color: AppColors.white,
                                  fontWeight: .bold,
                                ),
                          ),
                          TextSpan(
                            text: ' .00',
                            style: Theme.of(context).textTheme.headlineMedium!
                                .copyWith(
                                  color: AppColors.white.withValues(alpha: 0.8),
                                  fontWeight: .bold,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: .symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: .spaceBetween,
                      children: OperationsDataLocal.data
                          .map(
                            (it) => Column(
                              children: [
                                CircleIconW(
                                  icon: it.icon,
                                  size: 21,
                                  padding: 15,
                                  color: AppColors.white,
                                  iconColor: AppColors.black,
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  it.title,
                                  style: Theme.of(context).textTheme.bodyMedium!
                                      .copyWith(color: AppColors.white),
                                ),
                              ],
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Expanded(
              child: Stack(
                children: [
                  Opacity(
                    opacity: 0.18,
                    child: RotationTransition(
                      turns: const AlwaysStoppedAnimation(2 / 360),
                      child: Container(
                        margin: .symmetric(horizontal: 30),
                        height: 50,
                        decoration: BoxDecoration(
                          color: Theme.of(context).canvasColor,
                          borderRadius: .only(
                            topLeft: .circular(30),
                            topRight: .circular(30),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    top: 20,
                    child: RotationTransition(
                      turns: const AlwaysStoppedAnimation(2 / -360),
                      child: Align(
                        alignment: .topCenter,
                        child: Opacity(
                          opacity: 0.8,
                          child: Container(
                            margin: const .symmetric(horizontal: 12),
                            height: 40,
                            decoration: BoxDecoration(
                              color: Theme.of(context).canvasColor,
                              borderRadius: const .only(
                                topLeft: .circular(30),
                                topRight: .circular(30),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    top: 40,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: .only(
                          topLeft: .circular(40),
                          topRight: .circular(40),
                        ),
                        color: Theme.of(context).canvasColor,
                      ),
                      child: Padding(
                        padding: .all(28),
                        child: Column(
                          crossAxisAlignment: .start,
                          children: [
                            Row(
                              mainAxisAlignment: .spaceBetween,
                              children: [
                                Text(
                                  'My Wallet',
                                  style: Theme.of(
                                    context,
                                  ).textTheme.titleMedium,
                                ),
                                GestureDetector(
                                  onTap: () =>
                                      context.go('/statistics', extra: color),
                                  child: Row(
                                    children: [
                                      Transform.translate(
                                        offset: const Offset(13, 0),
                                        child: Container(
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            shape: .circle,
                                            color: AppColors.grey,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          shape: .circle,
                                          color: AppColors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 23),
                            Text(
                              '\$238,732',
                              style: Theme.of(context).textTheme.displaySmall!
                                  .copyWith(fontWeight: .bold),
                            ),
                            const SizedBox(height: 13),
                            Opacity(
                              opacity: 0.6,
                              child: Text(
                                'Total balance',
                                style: Theme.of(context).textTheme.titleMedium!,
                              ),
                            ),
                            SizedBox(height: 15),
                            ContactsW(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Align(
        alignment: .bottomCenter,
        child: Container(
          padding: .symmetric(horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: .circular(40),
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
          child: Row(
            spacing: 10,
            mainAxisSize: .min,
            children: List.generate(AppConfig.menu.length, (index) {
              String it = AppConfig.menu[index];
              return CircleIconW(
                icon: it,
                size: 20,
                padding: 18,
                iconColor: index == 0 ? AppColors.white : null,
                color: index == 0 ? color : Theme.of(context).canvasColor,
              );
            }),
          ),
        ),
      ),
    );
  }
}
