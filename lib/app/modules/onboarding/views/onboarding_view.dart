import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import '../controllers/onboarding_controller.dart';
import 'package:shoncoy_app/app/modules/onboarding/views/style.dart';

//color paletes for button => 3E7C78 shadow => 3F8782

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Color(0xFF3E7C78),
        statusBarIconBrightness: Brightness.light,
        //statusBarIconBrightness: Brightness.dark,
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
                  //color: Color(0xFF3E7C78),
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'সঞ্চয়',
                    style: TextStyle(
                      fontSize: 48,
                      fontFamily: 'AnekBangla',
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFB3261E),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Text(
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
                  SizedBox(height: screenHeight * 0.01),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.zero, // Must be zero for full Ink control

                      fixedSize: Size(screenWidth * 0.9, screenHeight * 0.07),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      elevation: 10,
                      backgroundColor:
                          Colors.transparent, // Background via gradient now
                      shadowColor: const Color(0xFF3F8782),
                      enableFeedback: true,
                    ),
                    child: inkstyle,
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already Have Account?",
                        style: TextStyle(fontSize: 14),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text('Log In', style: TextStyle(fontSize: 14)),
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
