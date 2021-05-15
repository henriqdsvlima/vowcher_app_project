import 'package:flutter/material.dart';
import 'package:vowcher_app_project/screens/vowcher_login.dart';

void main() {
  runApp(VowcherLogin());
}

class VowcherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: VowcherLogin(),
    );
  }
}
