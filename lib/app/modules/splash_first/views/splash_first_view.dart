import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import '../controllers/splash_first_controller.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:shoncoy_app/app/modules/onboarding/views/onboarding_view.dart';

class SplashFirstView extends GetView<SplashFirstController> {
  const SplashFirstView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedSplashScreen(
          duration: 2000,
          splashIconSize: 350,
          nextScreen: OnboardingView(),
          splash: LottieBuilder.asset(
            'lottie_anime/loading colour.json',
            frameRate: FrameRate(60),
          ),
        ),
      ),
    );
  }
}
