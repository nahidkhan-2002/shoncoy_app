import 'package:flutter/material.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Transform.translate(
                  offset: Offset(0, -80),
                  child: Transform.scale(
                    scale: 2,
                    child: ClipOval(
                      child: Container(
                        height: _height * 0.27,
                        width: _width,
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
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      SizedBox(height: _height * 0.05),
                      Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'শুভ সকাল',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'AnekBangla',
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                'মোঃ আব্দুর রহমান',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontFamily: 'AnekBangla',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
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
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: _height * 0.05),
                      Container(
                        height: _height * 0.22,
                        width: _width,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 34, 123, 118),
                              Color.fromARGB(255, 73, 164, 158),
                            ],
                            stops: [0.0, 1.0],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(143, 57, 188, 179),
                              offset: Offset(0, 10),
                              blurStyle: BlurStyle.normal,
                              blurRadius: 10,
                              spreadRadius: 0.5,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'বর্তমান ব্যালেন্স',
                                        style: TextStyle(
                                          fontFamily: 'AnekBangla',
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(width: 6),
                                      Icon(
                                        Icons.arrow_upward_rounded,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.more_horiz_rounded,
                                    color: Colors.white,
                                  ),
                                ],
                              ),

                              Text(
                                '৳25,000.00',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                  //fontFamily: 'AnekBangla',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Spacer(),
                              //SizedBox(height: _height * 0.05),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      BlurryContainer(
                                        blur: 1,
                                        elevation: 1,
                                        shadowColor: const Color.fromARGB(
                                          38,
                                          255,
                                          255,
                                          255,
                                        ),
                                        borderRadius: BorderRadius.circular(15),
                                        child: Icon(
                                          Icons.arrow_downward_rounded,
                                          color: Colors.white,
                                          size: 15,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'আয়',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            '৳50,000.00',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Row(
                                    children: [
                                      BlurryContainer(
                                        blur: 1,
                                        elevation: 1,
                                        shadowColor: const Color.fromARGB(
                                          38,
                                          255,
                                          255,
                                          255,
                                        ),
                                        borderRadius: BorderRadius.circular(15),
                                        child: Icon(
                                          Icons.arrow_downward_rounded,
                                          color: Colors.white,
                                          size: 15,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'খরচ',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            '৳25,000.00',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: _height * 0.03),
                      Container(
                        height: _height * 0.09,
                        width: _width,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 33, 121, 117),
                              Color.fromARGB(255, 73, 164, 158),
                            ],
                            stops: [0.0, 1.0],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(143, 57, 188, 179),
                              offset: Offset(0, 5),
                              blurStyle: BlurStyle.normal,
                              blurRadius: 10,
                              spreadRadius: 0.5,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              CircularPercentIndicator(
                                radius: 25.0,
                                animation: true,
                                lineWidth: 7.0,
                                percent: 0.60,
                                center: Text(
                                  "60%",
                                  style: TextStyle(fontSize: 10),
                                ),
                                progressColor: const Color.fromARGB(
                                  255,
                                  255,
                                  255,
                                  255,
                                ),
                              ),
                              SizedBox(width: 15),
                              Text(
                                "নতুন বাইক",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'AnekBangla',
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                              ),
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
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(label: 'home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(
            label: 'analytics',
            icon: Icon(Icons.analytics_outlined),
          ),
          BottomNavigationBarItem(label: 'add', icon: Icon(Icons.add)),
          BottomNavigationBarItem(
            label: 'wallet',
            icon: Icon(Icons.wallet_rounded),
          ),
          BottomNavigationBarItem(
            label: 'profile',
            icon: Icon(Icons.person_2_outlined),
          ),
        ],
      ),
    );
  }
}
