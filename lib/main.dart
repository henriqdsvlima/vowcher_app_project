import 'package:flutter/material.dart';
import 'package:vowcher_app_project/screens/vowcher_login.dart';
import 'package:vowcher_app_project/screens/vowcher_register.dart';

void main() {
  runApp(VowcherRegister());
}

class VowcherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: VowcherLogin(),
      home: VowcherRegister(),
    );
  }
}
