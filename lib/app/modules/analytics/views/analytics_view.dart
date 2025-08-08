import 'package:get/get.dart';
import '../../home/views/style.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import '../../../routes/app_pages.dart';
import '../controllers/analytics_controller.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:shoncoy_app/app/modules/home/controllers/home_controller.dart';

class AnalyticsView extends GetView<AnalyticsController> {
  const AnalyticsView({super.key});
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final HomeController controller = Get.put(HomeController());
    // Initial Selected Value
    String dropdownvalue = 'Expense';

    var items = ['Expense', 'Income'];
    final months = ['Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep'];
    final List<FlSpot> spots = const [
      FlSpot(0, 1.2),
      FlSpot(1, 1.9),
      FlSpot(2, 3.0),
      FlSpot(3, 2.6),
      FlSpot(4, 6),
      FlSpot(5, 2.9),
      FlSpot(6, 3.3),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: buttonStyle(height, width),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: CupertinoColors.transparent,
        shape: CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Obx(
                () => IconButton(
                  icon: Icon(Icons.home, size: 40),
                  color: controller.selectedIndex.value == 0
                      ? Color(0xFF549994)
                      : Color(0xFFAAAAAA),
                  onPressed: () {
                    if (Get.currentRoute != Routes.HOME) {
                      controller.onItemTapped(0);
                      Get.toNamed(Routes.HOME);
                    }
                  },
                ),
              ),
              Obx(
                () => IconButton(
                  icon: Icon(Icons.analytics_outlined, size: 40),
                  color: controller.selectedIndex.value == 1
                      ? Color(0xFF549994)
                      : Color(0xFFAAAAAA),
                  onPressed: () {
                    if (Get.currentRoute != Routes.ANALYTICS) {
                      controller.onItemTapped(1);
                      Get.toNamed(Routes.ANALYTICS);
                    }
                  },
                ),
              ),
              SizedBox(width: 40), // Space for FAB
              Obx(
                () => IconButton(
                  icon: Icon(Icons.wallet_rounded, size: 40),
                  color: controller.selectedIndex.value == 3
                      ? Color(0xFF549994)
                      : Color(0xFFAAAAAA),
                  onPressed: () {
                    if (Get.currentRoute != Routes.ADD_EXPENSE) {
                      controller.onItemTapped(3);
                      Get.toNamed(Routes.ADD_EXPENSE);
                    }
                  },
                ),
              ),
              Obx(
                () => IconButton(
                  icon: Icon(Icons.person_outline, size: 40),
                  color: controller.selectedIndex.value == 4
                      ? Color(0xFF549994)
                      : Color(0xFFAAAAAA),
                  onPressed: () {
                    if (Get.currentRoute != Routes.PROFILE) {
                      controller.onItemTapped(4);
                      Get.toNamed(Routes.PROFILE);
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),

      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  IconButton(
                    onPressed: () {
                      Get.toNamed(Routes.HOME);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new_sharp,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'Statistics',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {
                      Get.toNamed(Routes.HOME);
                    },
                    icon: Icon(Icons.ios_share, color: Colors.black, size: 30),
                  ),
                ],
              ),
              SizedBox(height: height * 0.06),
              Row(
                children: [
                  SizedBox(width: width * 0.03),
                  Container(
                    height: height * 0.05,
                    width: width * 0.2,
                    decoration: BoxDecoration(
                      color: Color(0xFF549994),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text('Day', style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  Spacer(),
                  Text('Week'),
                  Spacer(),
                  Text('Month'),
                  Spacer(),
                  Text('Year'),
                  SizedBox(width: width * 0.05),
                ],
              ),
              SizedBox(height: height * 0.04),
              Row(
                children: [
                  Spacer(),
                  SizedBox(
                    height: height * 0.05,
                    width: width * 0.28,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white, // Background color
                        border: Border.all(
                          color: Colors.black, // Border color
                          width: 1, // Border width
                        ),
                        borderRadius: BorderRadius.circular(
                          10,
                        ), // Border radius
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: DropdownButton(
                            iconSize: 25,
                            underline: SizedBox(),
                            value: dropdownvalue,
                            icon: const Icon(Icons.keyboard_arrow_down),
                            dropdownColor: Color.fromARGB(255, 149, 197, 194),
                            borderRadius: BorderRadius.circular(10),
                            items: items.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(
                                  items,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              dropdownvalue = newValue!;
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: width * 0.02),
                ],
              ),
              SizedBox(height: height * 0.035),
              SizedBox(
                height: height * 0.2,
                width: width,
                child: LineChart(
                  LineChartData(
                    minX: 0,
                    maxX: 6,
                    minY: 0,
                    maxY: 7,
                    gridData: FlGridData(show: false),
                    borderData: FlBorderData(show: false),
                    titlesData: FlTitlesData(
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          interval: 1,
                          getTitlesWidget: (value, meta) {
                            final i = value.toInt();
                            if (i < 0 || i >= months.length) {
                              return const SizedBox();
                            }
                            return Text(
                              months[i],
                              style: const TextStyle(fontSize: 12),
                            );
                          },
                        ),
                      ),
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      topTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      rightTitles: AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                    ),
                    lineBarsData: [
                      LineChartBarData(
                        spots: spots,
                        isCurved: true,
                        barWidth: 3,
                        color: Color(0xFF549994),
                        belowBarData: BarAreaData(
                          show: true,
                          gradient: LinearGradient(
                            colors: [
                              const Color(0xFF2E8B80).withOpacity(0.2),
                              Colors.transparent,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                        dotData: FlDotData(show: false),
                      ),
                    ],
                    lineTouchData: LineTouchData(
                      handleBuiltInTouches: true,
                      touchTooltipData: LineTouchTooltipData(
                        tooltipBorderRadius: BorderRadius.circular(8),
                        getTooltipColor: (touchedSpot) => Color(0xFF549994),
                        getTooltipItems: (touchedSpot) {
                          return touchedSpot.map((spot) {
                            return LineTooltipItem(
                              '৳${(spot.y * 1000).toStringAsFixed(0)}',
                              const TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontWeight: FontWeight.bold,
                              ),
                            );
                          }).toList();
                        },
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.05),
              Row(
                children: [
                  Text(
                    'Transactions History',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    'see all',
                    style: TextStyle(fontSize: 14, color: Color(0xFFAAAAAA)),
                  ),
                ],
              ),

              SizedBox(height: height * 0.02),
              //স্কুলের বেতন
              Row(
                children: [
                  BlurryContainer(
                    borderRadius: BorderRadius.circular(5),
                    height: height * 0.06,
                    width: width * 0.15,
                    blur: 5,
                    elevation: 10,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    child: Icon(
                      Icons.school_outlined,
                      color: const Color.fromARGB(255, 0, 0, 0),
                      size: 30,
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'স্কুলের বেতন',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'AnekBangla',
                        ),
                      ),
                      Text(
                        'Today',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'AnekBangla',
                          color: Color.fromARGB(255, 108, 108, 108),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(
                    '-৳3,000',
                    style: TextStyle(color: Colors.redAccent, fontSize: 18),
                  ),
                ],
              ),
              SizedBox(height: height * 0.02),
              //কাচা বাজার
              Row(
                children: [
                  BlurryContainer(
                    borderRadius: BorderRadius.circular(5),
                    height: height * 0.06,
                    width: width * 0.15,
                    blur: 5,
                    elevation: 10,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    child: Icon(
                      Icons.shopping_bag_outlined,
                      color: const Color.fromARGB(255, 0, 0, 0),
                      size: 30,
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'কাচা বাজার',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'AnekBangla',
                        ),
                      ),
                      Text(
                        'Yesterday',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'AnekBangla',
                          color: Color.fromARGB(255, 108, 108, 108),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(
                    '-৳8,000',
                    style: TextStyle(color: Colors.redAccent, fontSize: 18),
                  ),
                ],
              ),
              SizedBox(height: height * 0.02),
              //স্যালারি
              Row(
                children: [
                  BlurryContainer(
                    borderRadius: BorderRadius.circular(5),
                    height: height * 0.06,
                    width: width * 0.15,
                    blur: 5,
                    elevation: 10,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    child: Icon(
                      Icons.currency_exchange_outlined,
                      color: const Color.fromARGB(255, 0, 0, 0),
                      size: 30,
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'স্যালারি',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'AnekBangla',
                        ),
                      ),
                      Text(
                        'Jan 30, 2022',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'AnekBangla',
                          color: Color.fromARGB(255, 108, 108, 108),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(
                    '+৳50,000',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 32, 166, 95),
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
