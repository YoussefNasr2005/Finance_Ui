import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BarChartSample2 extends StatefulWidget {
  BarChartSample2({super.key});

  final Color leftBarColor = AppColors.primaryColor;
  final Color rightBarColor = AppColors.primaryColor.withValues(alpha: 0.4);
  final Color avgColor = AppColors.greyColor;

  @override
  State<StatefulWidget> createState() => BarChartSample2State();
}

class BarChartSample2State extends State<BarChartSample2> {
  final double width = 12.w;

  late List<BarChartGroupData> rawBarGroups;
  late List<BarChartGroupData> showingBarGroups;

  int touchedGroupIndex = -1;

  @override
  void initState() {
    super.initState();
    final barGroup1 = makeGroupData(0, 16, 12);
    final barGroup2 = makeGroupData(1, 16, 12);
    final barGroup3 = makeGroupData(2, 16, 12);
    final barGroup4 = makeGroupData(3, 16, 12);
    final barGroup5 = makeGroupData(4, 16, 12);

    final items = [barGroup1, barGroup2, barGroup3, barGroup4, barGroup5];

    rawBarGroups = items;

    showingBarGroups = rawBarGroups;
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: BarChart(
              BarChartData(
                maxY: 20,
                barTouchData: BarTouchData(
                  touchTooltipData: BarTouchTooltipData(
                    getTooltipColor: ((group) {
                      return Colors.grey;
                    }),
                    getTooltipItem: (a, b, c, d) => null,
                  ),
                  touchCallback: (FlTouchEvent event, response) {
                    if (response == null || response.spot == null) {
                      setState(() {
                        touchedGroupIndex = -1;
                        showingBarGroups = List.of(rawBarGroups);
                      });
                      return;
                    }

                    touchedGroupIndex = response.spot!.touchedBarGroupIndex;

                    setState(() {
                      if (!event.isInterestedForInteractions) {
                        touchedGroupIndex = -1;
                        showingBarGroups = List.of(rawBarGroups);
                        return;
                      }
                      showingBarGroups = List.of(rawBarGroups);
                      if (touchedGroupIndex != -1) {
                        var sum = 0.0;
                        for (final rod
                            in showingBarGroups[touchedGroupIndex].barRods) {
                          sum += rod.toY;
                        }
                        final avg =
                            sum /
                            showingBarGroups[touchedGroupIndex].barRods.length;

                        showingBarGroups[touchedGroupIndex] =
                            showingBarGroups[touchedGroupIndex].copyWith(
                              barRods: showingBarGroups[touchedGroupIndex]
                                  .barRods
                                  .map((rod) {
                                    return rod.copyWith(
                                      toY: avg,
                                      color: widget.avgColor,
                                      label: makeLabel(
                                        avg,
                                        widget.avgColor,
                                        true,
                                      ),
                                    );
                                  })
                                  .toList(),
                            );
                      }
                    });
                  },
                ),
                titlesData: FlTitlesData(
                  show: true,
                  rightTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  topTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: bottomTitles,
                      reservedSize: 42,
                    ),
                  ),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 25,
                      interval: 1,
                      getTitlesWidget: leftTitles,
                    ),
                  ),
                ),
                borderData: FlBorderData(show: false),
                barGroups: showingBarGroups,
                gridData: const FlGridData(
                  show: true,
                  drawVerticalLine: false,
                  horizontalInterval: 4,
                ),
              ),
            ),
          ),

          const SizedBox(height: 12),
        ],
      ),
    );
  }

  Widget leftTitles(double value, TitleMeta meta) {
     TextStyle(
      color: Theme.of(context).colorScheme.onSurfaceVariant,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    String text;
    if (value == 0) {
      text = '0';
    } else if (value == 4) {
      text = '2K';
    } else if (value == 8) {
      text = '4K';
    } else if (value == 12) {
      text = '6K';
    } else if (value == 16) {
      text = '8K';
    } else {
      return Container();
    }
    return SideTitleWidget(
      meta: meta,
      space: 0,
      child: Text(text),
    );
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    final titles = <String>['Jan', 'Feb', 'Mar', 'Apr', 'May'];

    final Widget text = Text(
      titles[value.toInt()],
      style: const TextStyle(
        color: Color(0xff7589a2),
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
    );

    return SideTitleWidget(
      meta: meta,
      space: 8, //margin top
      child: text,
    );
  }

  BarChartRodLabel makeLabel(double value, Color color, bool avg) =>
      BarChartRodLabel(
        angle: avg ? -90 : 0,
        style: TextStyle(
          color: color,
          fontSize: 12,
          fontWeight: FontWeight.bold,
          shadows: [Shadow(color: Colors.black54, blurRadius: 4)],
        ),
      );

  BarChartGroupData makeGroupData(int x, double y1, double y2) {
    return BarChartGroupData(
      barsSpace: 4,
      x: x,
      barRods: [
        BarChartRodData(
          toY: y1,
          color: widget.leftBarColor,
          width: width,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
            bottomLeft: Radius.zero,
            bottomRight: Radius.zero,
          ),
          label: makeLabel(y1, widget.leftBarColor, false),
        ),
        BarChartRodData(
          toY: y2,
          color: widget.rightBarColor,
          width: width,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
            bottomLeft: Radius.zero,
            bottomRight: Radius.zero,
          ),
          label: makeLabel(y2, widget.rightBarColor, false),
        ),
      ],
    );
  }
}
