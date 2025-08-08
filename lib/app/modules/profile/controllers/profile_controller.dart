import 'package:get/get.dart';

class ProfileController extends GetxController {
  //TODO: Implement ProfileController
var selectedIndex = 0.obs;

  void onItemTapped(int index) {
    selectedIndex.value = index;
  }
  final count = 0.obs;



  void increment() => count.value++;
}
