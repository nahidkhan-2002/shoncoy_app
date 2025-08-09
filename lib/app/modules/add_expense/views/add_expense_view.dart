import 'package:get/get.dart';
import '../../home/views/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../../../routes/app_pages.dart';
import 'package:dotted_border/dotted_border.dart';
import '../controllers/add_expense_controller.dart';
import '../../home/controllers/home_controller.dart';
import 'package:blurrycontainer/blurrycontainer.dart';

class AddExpenseView extends GetView<AddExpenseController> {
  const AddExpenseView({super.key});
  @override
  Widget build(BuildContext context) {
    var selectedItem = 'স্কুলের বেতন';
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final HomeController controller = Get.put(HomeController());
    return Scaffold(
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                              color: const Color.fromARGB(255, 255, 255, 255),
                              size: 30,
                            ),
                          ),
                          Spacer(),
                          Text(
                            'Add Expense',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Spacer(),
                          IconButton(
                            onPressed: () {
                              Get.toNamed(Routes.HOME);
                            },
                            icon: Icon(
                              Icons.more_horiz_outlined,
                              color: const Color.fromARGB(255, 255, 255, 255),
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.055),
                      BlurryContainer(
                        width: width * 0.9,
                        blur: 10,
                        borderRadius: BorderRadius.circular(10),
                        elevation: 15,
                        color: const Color.fromARGB(146, 255, 255, 255),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'NAME',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: height * 0.01),
                              DropdownButtonFormField(
                                value: selectedItem,
                                items:
                                    <String>[
                                      'স্কুলের বেতন',
                                      'কাচা বাজার',
                                      'ইন্টারনেট বিল',
                                    ].map((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(
                                          value,
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                              255,
                                              38,
                                              38,
                                              38,
                                            ),
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                onChanged: (String? newValue) {
                                  selectedItem = newValue!;
                                },
                                icon: Icon(Icons.keyboard_arrow_down),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                ),
                              ),

                              SizedBox(height: height * 0.03),
                              Text(
                                'AMOUNT',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: height * 0.01),
                              TextField(
                                decoration: InputDecoration(
                                  suffixIcon: Icon(Icons.cancel_outlined),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  label: Text(
                                    'Enter The Amount',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 38, 38, 38),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: height * 0.03),
                              Text(
                                'DATE',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: height * 0.01),
                              TextField(
                                decoration: InputDecoration(
                                  suffixIcon: Icon(
                                    Icons.calendar_today_outlined,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  label: Text(
                                    'Enter The Date',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 38, 38, 38),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: height * 0.03),
                              Text(
                                'INVOICE',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: height * 0.01),
                              SizedBox(
                                width: width * 0.9,
                                child: Center(
                                  child: DottedBorder(
                                    options: RoundedRectDottedBorderOptions(
                                      dashPattern: [5, 5],
                                      strokeWidth: 1,
                                      color: Color(0xFFAAAAAA),
                                      radius: Radius.circular(5),
                                      padding: EdgeInsets.all(16),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.add_circle,
                                          color: Color(0xFFAAAAAA),
                                        ),
                                        SizedBox(width: width * 0.02),
                                        Text(
                                          'Add Invoice',
                                          style: TextStyle(
                                            color: Color(0xFFAAAAAA),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: height * 0.07),
                            ],
                          ),
                        ),
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
