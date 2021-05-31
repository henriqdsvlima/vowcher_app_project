import 'dart:async';

import 'package:flutter/material.dart';
import 'package:vowcher_app_project/screens/navbar.dart';

void main() {
  runApp(DisplayLogo());
}

class DisplayLogo extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<DisplayLogo> {
  initState() {
    super.initState();

    ///add delay here
    Timer(Duration(seconds: 2), () {
      if (mounted) runApp(NavBar());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Center(
          child: FlutterLogo(size: 300),
        ));
  }
}
