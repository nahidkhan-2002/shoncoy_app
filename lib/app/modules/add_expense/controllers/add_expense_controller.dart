import 'package:get/get.dart';

class AddExpenseController extends GetxController {
  //TODO: Implement AddExpenseController
var selectedIndex = 0.obs;

  void onItemTapped(int index) {
    selectedIndex.value = index;
  }
  final count = 0.obs;



  void increment() => count.value++;
}
