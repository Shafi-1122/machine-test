import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:machinetest/view_model/repo_provider.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
// import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  //  MyHomePage();

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  // final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<_SplineAreaData>? chartData;
  bool checkvalue = false;
  @override
  void initState() {
    chartData = <_SplineAreaData>[
      _SplineAreaData(
        'Sun',
        2,
      ),
      _SplineAreaData(
        'Mon',
        2.5,
      ),
      _SplineAreaData(
        'Tue',
        2,
      ),
      _SplineAreaData(
        'Wed',
        4.4,
      ),
      _SplineAreaData(
        'Thu',
        3,
      ),
      _SplineAreaData(
        'Fri',
        5,
      ),
    ];
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
       

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 245, 244, 244),
        body: SingleChildScrollView(
          child: Container(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 247, 245, 245),
                    borderRadius: BorderRadius.only(
                        // topRight: Radius.circular(40.0),
                        bottomRight: Radius.circular(40.0),
                        // topLeft: Radius.circular(40.0),
                        bottomLeft: Radius.circular(40.0)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            // IconButton(
                            // onPressed: () {},
                            // icon:
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: const Icon(
                                Icons.arrow_back_ios_new_rounded,
                                size: 17,
                              ),
                            ),
                            // ),
                            const Spacer(),
                            IconButton(
                                onPressed: () {}, icon: const Icon(Icons.more_vert))
                          ],
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                        Text(
                          'Dashboard Design',
                          style: GoogleFonts.nunito(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const Text(
                          'Today, Shared by - Unbox Digital',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color.fromARGB(225, 163, 162, 162)),
                        ),
                        const SizedBox(
                          height: 9,
                        ),
                        Row(
                          children: [
                            CircularPercentIndicator(
                                radius: 39,
                                lineWidth: 8,
                                percent: 0.75,
                                center: const Text("85%",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0))),
                                progressColor: const Color.fromARGB(255, 166, 228, 96),
                                rotateLinearGradient: true,
                                circularStrokeCap: CircularStrokeCap.round),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right: 18.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Team',
                                    style: GoogleFonts.nunito(
                                        fontWeight: FontWeight.bold, fontSize: 14),
                                  ),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  SizedBox(
                                      height: 25,
                                      child: Image.asset(
                                        'assets/images/avater.png',
                                        fit: BoxFit.fill,
                                      )),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    'Deadline',
                                    style: GoogleFonts.nunito(
                                        fontWeight: FontWeight.bold, fontSize: 14),
                                  ),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  const Row(
                                    children: [
                                      Icon(
                                        Icons.calendar_month_rounded,
                                        color: Color.fromARGB(225, 163, 162, 162),
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        ' July 25 2021-July 30 2021',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                            color:
                                                Color.fromARGB(225, 163, 162, 162)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'Project Progress',
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 6, right: 6),
                  child: Container(
                    // height: MediaQuery.of(context).size.height / 5.1,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                          topLeft: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0)),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            leading: Checkbox(
                              activeColor: const Color.fromARGB(255, 144, 151, 253),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              value: true,
                              onChanged: (fina) {},
                            ),
                            title: Text(
                              'Create user flow',
                              style: GoogleFonts.mPlusRounded1c(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.5),
                            ),
                          ),
                          ListTile(
                            leading: Checkbox(
                              activeColor: const Color.fromARGB(255, 144, 151, 253),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              value: true,
                              onChanged: (fina) {},
                            ),
                            title: Text(
                              'Create wirefame',
                              style: GoogleFonts.mPlusRounded1c(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.5),
                            ),
                          ),
                          ListTile(
                            leading: Checkbox(
                              activeColor: const Color.fromARGB(255, 144, 151, 253),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              value: checkvalue,
                              onChanged: (check) {
                                setState(() {
                                  checkvalue = check!;
                                });
                              },
                            ),
                            title: Text(
                              'Transform visual design',
                              style: GoogleFonts.mPlusRounded1c(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.5),
                            ),
                          ),
                        ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0, left: 12, right: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Project Overview',
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                      DropdownButton<String>(
                        value: 'Weekly', // Set 'Weekly' as the default value
                        items: <String>['Weekly', 'Monthly', 'Yearly', 'Daily']
                            .map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          // Handle the value change here
                        },
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                          topLeft: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0)),
                    ),
                    // color: Colors.white,
                    height: MediaQuery.of(context).size.height / 3.5,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SfCartesianChart(
                        // legend: const Legend(isVisible: true, opacity: 0.7),
                        // title: ChartTitle(text: 'Inflation rate'),
                        plotAreaBorderWidth: 0,
                        primaryXAxis: CategoryAxis(
                            interval: 1,
                            majorGridLines: const MajorGridLines(width: 0),
                            edgeLabelPlacement: EdgeLabelPlacement.shift),
                        primaryYAxis: NumericAxis(
                            interval: 2,
                            labelFormat: '{value}',
                            axisLine: const AxisLine(width: 0),
                            majorGridLines: const MajorGridLines(width: 0),
                            majorTickLines: const MajorTickLines(size: 0)),
                        series: _getSplieAreaSeries(),
                        tooltipBehavior: TooltipBehavior(enable: true),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<ChartSeries<_SplineAreaData, String>> _getSplieAreaSeries() {
    return <ChartSeries<_SplineAreaData, String>>[
      SplineAreaSeries<_SplineAreaData, String>(
        dataSource: chartData!,
        color: const Color.fromARGB(255, 219, 243, 193),
        borderColor: const Color.fromARGB(255, 196, 235, 154),
        borderWidth: 4,
        // name: '',
        xValueMapper: (_SplineAreaData sales, _) {
          return sales.year;
        },
        yValueMapper: (_SplineAreaData sales, _) => sales.y1,
      ),
      // SplineAreaSeries<_SplineAreaData, double>(
      //   dataSource: chartData!,
      //   borderColor: const Color.fromRGBO(192, 108, 132, 1),
      //   color: const Color.fromRGBO(192, 108, 132, 0.6),
      //   borderWidth: 2,
      //   name: 'China',
      //   xValueMapper: (_SplineAreaData sales, _) => sales.year,
      //   yValueMapper: (_SplineAreaData sales, _) => sales.y2,
      // )
    ];
  }
}

/// Private class for storing the spline area chart datapoints.
class _SplineAreaData {
  _SplineAreaData(
    this.year,
    this.y1,
  );
  final String year;
  final double y1;
  // final double y2;
}
