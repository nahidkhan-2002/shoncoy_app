import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../../../routes/app_pages.dart';
import '../controllers/profile_controller.dart';
import '../../home/controllers/home_controller.dart';
import 'package:blurrycontainer/blurrycontainer.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final HomeController controller = Get.put(HomeController());
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: CupertinoColors.transparent,

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
                  padding: EdgeInsets.all(12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: height * 0.01),
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
                            'Profile',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
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
                              size: 25,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.13),
                      ClipOval(
                        child: BlurryContainer(
                          height: height * 0.13,
                          width: width * 0.3,
                          color: Color.fromARGB(119, 234, 221, 255),
                          blur: 5,
                          elevation: 10,
                          child: Icon(
                            Icons.person_4_outlined,
                            size: 80,
                            color: Color(0xFF4F378A),
                            weight: 0.2,
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.017),
                      Text(
                        'মোঃ আব্দুর রহমান',
                        style: TextStyle(
                          fontFamily: 'AnekBangla',
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '@abdur_rahim01',
                        style: TextStyle(
                          color: Color.fromARGB(255, 60, 135, 130),
                        ),
                      ),

                      SizedBox(height: height * 0.03),
                      //invite friends
                      SafeArea(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(width: width * 0.05),
                                Icon(Icons.group_add_rounded, size: 30),
                                SizedBox(width: width * 0.05),
                                Text(
                                  'Invite Friends',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: height * 0.03),
                            Container(
                              height: 0.3,
                              width: width,
                              color: const Color.fromARGB(54, 0, 0, 0),
                            ),
                            SizedBox(height: height * 0.02),
                            //account
                            Row(
                              children: [
                                SizedBox(width: width * 0.05),
                                Icon(Icons.settings_outlined, size: 30),
                                SizedBox(width: width * 0.05),
                                Text(
                                  'অ্যাকাউন্ট',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: height * 0.03),
                            //own profile
                            Row(
                              children: [
                                SizedBox(width: width * 0.05),
                                Icon(Icons.person_pin, size: 30),
                                SizedBox(width: width * 0.05),
                                Text(
                                  'নিজস্ব প্রোফাইল',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: height * 0.03),
                            //message
                            Row(
                              children: [
                                SizedBox(width: width * 0.05),
                                Icon(Icons.message_outlined, size: 30),
                                SizedBox(width: width * 0.05),
                                Text(
                                  'ম্যাসেজ করুন',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: height * 0.03),
                            //login & security
                            Row(
                              children: [
                                SizedBox(width: width * 0.05),
                                Icon(Icons.shield_outlined, size: 30),
                                SizedBox(width: width * 0.05),
                                Text(
                                  'লগিন এবং সিকিউরিটি',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: height * 0.03),
                            //data and confidentiality
                            Row(
                              children: [
                                SizedBox(width: width * 0.05),
                                Icon(Icons.lock_open_sharp, size: 30),
                                SizedBox(width: width * 0.05),
                                Text(
                                  'তথ্য এবং গোপনীয়তা',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
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
