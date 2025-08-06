import 'package:get/get.dart';
import '../../home/views/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../../../routes/app_pages.dart';
import '../controllers/add_expense_controller.dart';
import '../../home/controllers/home_controller.dart';

class AddExpenseView extends GetView<AddExpenseController> {
  const AddExpenseView({super.key});
  @override
  Widget build(BuildContext context) {
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
                      Get.offAllNamed(Routes.HOME);
                      
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
                      Get.offAllNamed(Routes.ANALYTICS);
                   
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
                      Get.offAllNamed(Routes.ADD_EXPENSE);
                      
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
                      Get.offAllNamed(Routes.PROFILE);
                      
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      body: const Center(
        child: Text(
          'AddExpenseView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
