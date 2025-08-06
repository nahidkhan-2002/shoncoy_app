import 'package:get/get.dart';

import '../controllers/splash_first_controller.dart';

class SplashFirstBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashFirstController>(
      () => SplashFirstController(),
    );
  }
}
