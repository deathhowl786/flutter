import 'package:flutter/material.dart';

class MyButtonStyle {
  final ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
    padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 30.0),
    textStyle: const TextStyle(
      fontSize: 18, // Larger font size
      fontWeight: FontWeight.bold,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12), // Rounded corners
    ),
    side: const BorderSide(
      color: Colors.deepPurple, // White border color
      width: 2, // Border width
    ),
    elevation: 5, // Add a shadow effect
  );
}
