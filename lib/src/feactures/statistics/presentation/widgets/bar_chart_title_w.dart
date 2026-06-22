import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartTitle extends StatelessWidget {
  final double value;
  final TitleMeta meta;
  final Color color;
  const BarChartTitle({
    super.key,
    required this.value,
    required this.meta,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    var style = Theme.of(context).textTheme.titleMedium!.copyWith(color: color);
    String text = switch (value.toInt()) {
      0 => 'Sun',
      1 => 'Mon',
      2 => 'Tue',
      3 => 'Wed',
      4 => 'Thu',
      5 => 'Fri',
      _ => '',
    };
    return SideTitleWidget(
      meta: meta,
      // axisSide: meta.axisSide,
      child: Text(text, style: style),
    );
  }
}
