import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet/src/core/assets/app_assets.dart';
import 'package:wallet/src/core/theme/app_colors.dart';
import 'package:wallet/src/feactures/home/data/models/card_model.dart';
import 'package:wallet/src/feactures/home/presentation/painter/card_background_painter.dart';
import 'package:wallet/src/feactures/home/presentation/painter/card_painter.dart';

class CardW extends StatelessWidget {
  final CardModel data;
  const CardW({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          top: 20,
          child: Align(
            alignment: .topCenter,
            child: Row(
              children: [
                Expanded(
                  flex: 6,
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: .infinity,
                                padding: .symmetric(horizontal: 15),
                                decoration: BoxDecoration(
                                  color: data.color,
                                  borderRadius: BorderRadius.only(
                                    topLeft: .circular(18),
                                  ),
                                ),
                                child: SvgPicture.asset(AppAssets.visa),
                              ),
                            ),
                            Expanded(
                              child: CustomPaint(
                                painter: CardPainter(cardColor: data.color),
                                child: Container(
                                  padding: .all(10),
                                  margin: .only(
                                    top: 35,
                                    bottom: 5,
                                    left: 5,
                                    right: 5,
                                  ),
                                  decoration: BoxDecoration(
                                    shape: .circle,
                                    color: data.color,
                                  ),
                                  child: SvgPicture.asset(
                                    AppAssets.cardDetected,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: data.color,
                            borderRadius: .only(bottomLeft: .circular(18)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: .only(
                        topRight: .circular(18),
                        bottomRight: .circular(18),
                      ),
                      color: data.color,
                    ),
                    child: Column(
                      mainAxisAlignment: .end,
                      children: [
                        Column(
                          children: [
                            Column(
                              children: data.keyAccount
                                  .map(
                                    (it) => Text(
                                      it,
                                      style: GoogleFonts.robotoMono(
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .titleLarge!
                                            .copyWith(color: AppColors.white),
                                      ),
                                    ),
                                  )
                                  .toList(),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: SvgPicture.asset(
                                AppAssets.masterCard,
                                height: 60,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomLeft,
            child: CustomPaint(
              painter: CardBackgroundPainter(
                color: data.color,
                linearGradient: data.gradient,
              ),
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.10,
                width: MediaQuery.sizeOf(context).width * 0.68,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
