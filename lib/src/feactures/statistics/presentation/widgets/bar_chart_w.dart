import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wallet/src/feactures/statistics/data/local/percentage_filter_data_local.dart';
import 'package:wallet/src/feactures/statistics/data/models/percentage_filter_model.dart';
import 'package:wallet/src/feactures/statistics/presentation/state/filter_option_provider.dart';
import 'package:wallet/src/feactures/statistics/presentation/widgets/bar_chart_title_w.dart';

class BarChartW extends StatefulWidget {
  final Color color;
  const BarChartW({super.key, required this.color});

  @override
  State<StatefulWidget> createState() => BarChartWState();
}

class BarChartWState extends State<BarChartW> {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.3,
      child: Consumer(
        builder: (context, ref, child) {
          String option = ref.watch(selectProvider);
          return BarChart(
            mainBarData(option, widget.color),
            duration: Duration(milliseconds: 500),
            curve: Curves.easeOut, // Curva de la animación
          );
        },
      ),
    );
  }

  BarChartGroupData makeGroupData(
    int x,
    Color color,
    double y, {
    bool isTouched = false,
    double width = 45,
    List<int> showTooltips = const [],
  }) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: isTouched ? y + 1 : y,
          color: isTouched ? color.withValues(alpha: 0.7) : color,
          width: width,
          borderSide: isTouched
              ? BorderSide(color: color.withValues(alpha: 0.7))
              : const BorderSide(color: Colors.white, width: 0),
          backDrawRodData: BackgroundBarChartRodData(
            show: true,
            toY: 100,
            color: Theme.of(context).canvasColor,
          ),
        ),
      ],
      showingTooltipIndicators: showTooltips,
    );
  }

  List<BarChartGroupData> showingGroups(String value, Color color) =>
      List.generate(6, (i) {
        PercentageFilterModel data = PercentageFilterDataLocal.data.firstWhere(
          (it) => it.option == value,
        );

        switch (i) {
          case 0:
            return makeGroupData(
              0,
              color,
              data.percentageDay[i].percentage,
              isTouched: i == touchedIndex,
            );
          case 1:
            return makeGroupData(
              1,
              color,
              data.percentageDay[i].percentage,
              isTouched: i == touchedIndex,
            );
          case 2:
            return makeGroupData(
              2,
              color,
              data.percentageDay[i].percentage,
              isTouched: i == touchedIndex,
            );
          case 3:
            return makeGroupData(
              3,
              color,
              data.percentageDay[i].percentage,
              isTouched: i == touchedIndex,
            );
          case 4:
            return makeGroupData(
              4,
              color,
              data.percentageDay[i].percentage,
              isTouched: i == touchedIndex,
            );
          case 5:
            return makeGroupData(
              5,
              color,
              data.percentageDay[i].percentage,
              isTouched: i == touchedIndex,
            );
          default:
            return throw Error();
        }
      });

  BarChartData mainBarData(String option, Color color) {
    return BarChartData(
      barTouchData: BarTouchData(
        touchTooltipData: BarTouchTooltipData(
          getTooltipColor: (_) => Theme.of(context).canvasColor,
          tooltipHorizontalAlignment: FLHorizontalAlignment.center,
          tooltipMargin: -10,
          getTooltipItem: (group, groupIndex, rod, rodIndex) {
            String weekDay;
            switch (group.x) {
              case 0:
                weekDay = 'Monday';
                break;
              case 1:
                weekDay = 'Tuesday';
                break;
              case 2:
                weekDay = 'Wednesday';
                break;
              case 3:
                weekDay = 'Thursday';
                break;
              case 4:
                weekDay = 'Friday';
                break;
              case 5:
                weekDay = 'Saturday';
                break;
              default:
                throw Error();
            }
            return BarTooltipItem(
              '$weekDay\n',
              Theme.of(context).textTheme.bodyLarge!,
              children: [
                TextSpan(
                  text: ((rod.toY - 1).toStringAsFixed(1)).toString(),
                  style: Theme.of(context).textTheme.bodyLarge!,
                ),
              ],
            );
          },
        ),
        touchCallback: (FlTouchEvent event, barTouchResponse) {
          setState(() {
            if (!event.isInterestedForInteractions ||
                barTouchResponse == null ||
                barTouchResponse.spot == null) {
              touchedIndex = -1;
              return;
            }
            touchedIndex = barTouchResponse.spot!.touchedBarGroupIndex;
          });
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: (value, meta) =>
                BarChartTitle(value: value, meta: meta, color: color),
            reservedSize: 48,
          ),
        ),
        leftTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
      ),
      borderData: FlBorderData(show: false),
      barGroups: showingGroups(option, color),
      gridData: const FlGridData(show: false),
    );
  }
}
