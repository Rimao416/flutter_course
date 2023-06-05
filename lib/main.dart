import 'package:flutter/material.dart';
import 'package:flutter002/start_screen.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 78, 13, 151),
            Color.fromARGB(255, 78, 13, 151)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: const StartScreen(),
      ),
    ),
  ));
}
