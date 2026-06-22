import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wallet/src/core/config/app_config.dart';
import 'package:wallet/src/core/theme/app_colors.dart';
import 'package:wallet/src/feactures/statistics/presentation/state/filter_option_provider.dart';

class FilterOptionW extends StatelessWidget {
  const FilterOptionW({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      margin: .symmetric(vertical: 20),
      child: ListView.builder(
        scrollDirection: .horizontal,
        itemCount: AppConfig.staticOptions.length,
        itemBuilder: (BuildContext context, int index) {
          var it = AppConfig.staticOptions[index];
          return Consumer(
            builder: (ctx, ref, _) {
              String selectValue = ref.watch(selectProvider);
              return GestureDetector(
                child: Container(
                  alignment: .center,
                  margin: const .only(left: 12),
                  padding: const .symmetric(vertical: 3, horizontal: 12),
                  decoration: BoxDecoration(
                    borderRadius: .circular(20),
                    color: selectValue == it
                        ? AppColors.black
                        : AppColors.white,
                  ),
                  child: Text(
                    it,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: selectValue == it
                          ? AppColors.white
                          : AppColors.black,
                    ),
                  ),
                ),
                onTap: () {
                  ref
                      .read(selectProvider.notifier)
                      .update((state) => state = it);
                  ref
                      .read(offsetY.notifier)
                      .update((state) => MediaQuery.of(context).size.width);
                },
              );
            },
          );
        },
      ),
    );
  }
}
