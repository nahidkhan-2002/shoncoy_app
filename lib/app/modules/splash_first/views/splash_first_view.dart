import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:shoncoy_app/app/routes/app_pages.dart';

class SplashFirstView extends StatelessWidget {
  const SplashFirstView({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Get.toNamed(Routes.ONBOARDING);
    });

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: LottieBuilder.asset(
          'lottie_anime/loading colour.json',
          frameRate: FrameRate(60),
        ),
      ),
    );
  }
}
