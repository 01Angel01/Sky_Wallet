import 'package:flutter/material.dart';
import 'package:skywallet/Modules/Variables/Theme.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartPage extends StatefulWidget {
  const ChartPage({Key key}) : super(key: key);

  @override
  State<ChartPage> createState() => _ChartPageState();
}

class _UangData {
  _UangData(this.hari, this.nominal);
  final double hari;
  final double nominal;
}

class _ChartPageState extends State<ChartPage> {
  List<_UangData> data = [
    _UangData(10, 1000000),
    _UangData(15, 200000),
    _UangData(20, 300000),
    _UangData(25, 500000),
    _UangData(30, 700000)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: navbarBg,
        title: const Text('Laporan'),
        actions: [],
      ),
      body: Container(
        color: whiteColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: ListView(
                    padding: const EdgeInsets.only(top: 0),
                    children: [
                      Container(
                          margin: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: SfCartesianChart(
                              primaryXAxis: CategoryAxis(),
                              title: ChartTitle(
                                  text: 'Perkembangan Keuangan Bulan Maret'),
                              legend: Legend(isVisible: true),
                              tooltipBehavior: TooltipBehavior(enable: true),
                              series: <ChartSeries<_UangData, double>>[
                                LineSeries<_UangData, double>(
                                    dataSource: data,
                                    xValueMapper: (_UangData nominal, _) =>
                                        nominal.hari,
                                    yValueMapper: (_UangData nominal, _) =>
                                        nominal.nominal,
                                    name: 'Keuangan',
                                    dataLabelSettings: const DataLabelSettings(
                                        isVisible: true))
                              ])),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
