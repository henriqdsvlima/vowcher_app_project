import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'screens/navbar.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AnimatedSplashScreen(
      splash: Text(
        'Vowcher!',
        style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins'),
      ),
      nextScreen: NavBar(),
      splashTransition: SplashTransition.slideTransition,
      backgroundColor: Color(0xFFA5140C),
    ),
  ));
}
