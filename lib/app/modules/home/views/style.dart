import 'package:flutter/material.dart';

dynamic buttonStyle(height, width) => ClipOval(
  child: SizedBox(
    height: height * 0.2,
    width: width * 0.2,

    child: FloatingActionButton(
      onPressed: () {
        // FAB tap action
      },

      elevation: 4, // Optional: Shadow intensity
      shape: CircleBorder(), // Forcefully keep circle
      backgroundColor: Color(0xFF549994),
      splashColor: Color.fromARGB(255, 66, 207, 217),
      foregroundColor: Color(0xFF438883),
      child: Icon(Icons.add, size: 50, color: Colors.white),
    ),
  ),
);
