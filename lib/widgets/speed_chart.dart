import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class SpeedChart extends StatelessWidget {
  const SpeedChart({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: LineChart(
        LineChartData(
          titlesData: FlTitlesData(
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: true),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: true),
            ),
          ),
          borderData: FlBorderData(show: true),
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 5),
                FlSpot(1, 10),
                FlSpot(2, 7),
                FlSpot(3, 12),
                FlSpot(4, 8),
              ],
              isCurved: true,
              barWidth: 3,
              color: Colors.blue, // corrige ici, ne mets pas de liste
              dotData: FlDotData(show: false),
            ),
          ],
        ),
      ),
    );
  }
}

