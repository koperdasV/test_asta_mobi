import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:test_asta_mobi/resources/padding.dart';
import 'package:test_asta_mobi/src/ui/details/components/recomendation_text.dart';
import 'package:test_asta_mobi/src/ui/home/components/button.dart';
import 'package:test_asta_mobi/src/ui/home/components/category.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData('Маркетплейс', 25, Colors.red),
      ChartData('Одяг та прикраси', 38, Colors.pink),
      ChartData('Краса та здоровя', 34, Colors.orange),
      ChartData('Подорожі', 52, Colors.yellow)
    ];
    return Padding(
      padding: const EdgeInsets.only(top: 70),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const ButtonWidget(
                text: 'Партнери',
                icon: 'images/partners.png',
              ),
              SizedBox(
                width: 240,
                height: 240,
                child: SfCircularChart(
                  annotations: [
                    CircularChartAnnotation(
                      widget: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            '1063 ₴',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'Баланс кешбеку',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                  series: [
                    DoughnutSeries<ChartData, String>(
                      innerRadius: '75%',
                      dataSource: chartData,
                      pointColorMapper: (ChartData data, _) => data.color,
                      xValueMapper: (ChartData data, _) => data.x,
                      yValueMapper: (ChartData data, _) => data.y,
                      cornerStyle: CornerStyle.bothCurve,
                    ),
                  ],
                ),
              ),
              const ButtonWidget(
                text: 'Інформація',
                icon: 'images/info.png',
              ),
            ],
          ),
          Padding(
            padding: AppPadding.kdefaultPadding,
            child: const RecomendationText(
              text: 'Категорії',
            ),
          ),
          const Categories()
        ],
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, [this.color]);
  final String x;
  final double y;
  final Color? color;
}
