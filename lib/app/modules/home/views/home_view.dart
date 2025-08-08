import 'style.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import '../controllers/home_controller.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final HomeController controller = Get.put(HomeController());
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
        child: Column(
          children: [
            Stack(
              children: [
                Transform.translate(
                  offset: Offset(0, -80),
                  child: Transform.scale(
                    scale: 2,
                    child: ClipOval(
                      child: Container(
                        height: height * 0.27,
                        width: width,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xFF429690), Color(0xFF2A7C76)],
                            stops: [0.0, 1.0],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      SizedBox(height: height * 0.05),
                      Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'শুভ সকাল',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'AnekBangla',
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                'মোঃ আব্দুর রহমান',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontFamily: 'AnekBangla',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          BlurryContainer(
                            blur: 1,
                            elevation: 1,
                            shadowColor: const Color.fromARGB(
                              38,
                              255,
                              255,
                              255,
                            ),
                            borderRadius: BorderRadius.circular(9),
                            child: Icon(
                              Icons.notifications,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.05),
                      Container(
                        height: height * 0.22,
                        width: width,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 34, 123, 118),
                              Color.fromARGB(255, 73, 164, 158),
                            ],
                            stops: [0.0, 1.0],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(143, 57, 188, 179),
                              offset: Offset(0, 10),
                              blurStyle: BlurStyle.normal,
                              blurRadius: 10,
                              spreadRadius: 0.5,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'বর্তমান ব্যালেন্স',
                                        style: TextStyle(
                                          fontFamily: 'AnekBangla',
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(width: 6),
                                      Icon(
                                        Icons.arrow_upward_rounded,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.more_horiz_rounded,
                                    color: Colors.white,
                                  ),
                                ],
                              ),

                              Text(
                                '৳25,000.00',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                  //fontFamily: 'AnekBangla',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Spacer(),
                              //SizedBox(height: _height * 0.05),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      BlurryContainer(
                                        blur: 1,
                                        elevation: 1,
                                        shadowColor: const Color.fromARGB(
                                          38,
                                          255,
                                          255,
                                          255,
                                        ),
                                        borderRadius: BorderRadius.circular(15),
                                        child: Icon(
                                          Icons.arrow_downward_rounded,
                                          color: Colors.white,
                                          size: 15,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'আয়',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            '৳50,000.00',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Row(
                                    children: [
                                      BlurryContainer(
                                        blur: 1,
                                        elevation: 1,
                                        shadowColor: const Color.fromARGB(
                                          38,
                                          255,
                                          255,
                                          255,
                                        ),
                                        borderRadius: BorderRadius.circular(15),
                                        child: Icon(
                                          Icons.arrow_downward_rounded,
                                          color: Colors.white,
                                          size: 15,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'খরচ',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            '৳25,000.00',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.03),
                      Container(
                        height: height * 0.09,
                        width: width,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 33, 121, 117),
                              Color.fromARGB(255, 73, 164, 158),
                            ],
                            stops: [0.0, 1.0],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(143, 57, 188, 179),
                              offset: Offset(0, 5),
                              blurStyle: BlurStyle.normal,
                              blurRadius: 10,
                              spreadRadius: 0.5,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              CircularPercentIndicator(
                                radius: 25.0,
                                animation: true,
                                lineWidth: 7.0,
                                percent: 0.60,
                                center: Text(
                                  "60%",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                  ),
                                ),
                                progressColor: const Color.fromARGB(
                                  255,
                                  255,
                                  255,
                                  255,
                                ),
                              ),
                              SizedBox(width: 15),
                              Text(
                                "নতুন বাইক",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'AnekBangla',
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.03),
                      Row(
                        children: [
                          Text(
                            'Transactions History',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Text(
                            'see all',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xFFAAAAAA),
                            ),
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
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 18,
                            ),
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
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 18,
                            ),
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
