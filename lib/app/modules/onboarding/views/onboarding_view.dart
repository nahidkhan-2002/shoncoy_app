import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shoncoy_app/app/routes/app_pages.dart';
import 'package:shoncoy_app/app/modules/onboarding/views/style.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Color(0xFF3E7C78),
        statusBarIconBrightness: Brightness.light,
      ),
    );

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          ClipPath(
            clipper: DiagonalClipper(),
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: screenHeight * 0.6,
                  width: double.infinity,
                  child: Transform.scale(
                    scale: 1.1,
                    child: Image.asset(
                      'asset_project/savings.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                FittedBox(
                  fit: BoxFit.cover,
                  child: threeWhiteRings(screenHeight, screenWidth),
                ),
              ],
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 6, right: 16, left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'সঞ্চয়',
                    style: TextStyle(
                      fontSize: 48,
                      fontFamily: 'AnekBangla',
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFB3261E),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  const Text(
                    "আজকের সঞ্চয়,\nআগামীদিনের আশ্রয়",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      height: 1.4,
                      fontSize: 28,
                      fontFamily: 'AnekBangla',
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF3E7C78),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  ElevatedButton(
                    onPressed: () {
                      Get.offAllNamed(Routes.HOME);
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      fixedSize: Size(screenWidth * 0.9, screenHeight * 0.07),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      elevation: 10,
                      backgroundColor: Colors.transparent,
                      shadowColor: const Color(0xFF3F8782),
                    ),
                    child: inkstyle,
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already Have Account?",
                        style: TextStyle(fontSize: 14),
                      ),
                      TextButton(
                        onPressed: () {
                          // Login screen logic here
                        },
                        child: const Text(
                          'Log In',
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
