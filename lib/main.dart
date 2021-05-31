import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'screens/navbar.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: NavBar()));
}

class VowcherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.red,
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
      ),
      // home: VowcherLogin(),
      home: AnimatedSplashScreen(
        splash: Image.asset('assets/logo.png'),
        nextScreen: NavBar(),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Colors.red[300],
      ),
    );
  }
}
