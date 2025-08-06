import 'package:flutter/material.dart';

class DiagonalClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height - 60); // bottom-left
    path.lineTo(size.width, size.height - 20); // bottom-right (diagonal)
    path.lineTo(size.width, 0); // top-right
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

Widget threeWhiteRings(double screenHeight, double screenWidth) => Center(
  child: Transform.scale(
    scale: 2.6,
    child: SizedBox(
      width: screenWidth * 0.63,
      height: screenHeight * 0.63,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: screenWidth * 0.6,
            height: screenHeight * 0.6,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color.fromARGB(170, 255, 255, 255),
                width: 0.4,
              ),
            ),
          ),
          Container(
            width: (screenWidth * 0.45),
            height: (screenHeight * 0.45),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color.fromARGB(170, 255, 255, 255),
                width: 0.4,
              ),
            ),
          ),
          Container(
            width: (screenWidth * 0.32),
            height: (screenHeight * 0.32),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color.fromARGB(170, 255, 255, 255),
                width: 0.4,
              ),
            ),
          ),
        ],
      ),
    ),
  ),
);

Ink inkstyle = Ink(
  decoration: BoxDecoration(
    gradient: const LinearGradient(
      colors: [
        Color.fromARGB(255, 110, 207, 201), // Left color
        Color.fromARGB(255, 65, 151, 145), // Right color
      ],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    ),
    borderRadius: BorderRadius.circular(30),
  ),
  child: Container(
    alignment: Alignment.center,
    child: const Text(
      'Get Started',
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
  ),
);
