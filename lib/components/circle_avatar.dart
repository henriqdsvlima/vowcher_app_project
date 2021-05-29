import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundImage: AssetImage('assets/images/user.png'),
      backgroundColor: Colors.red.shade100,
      child: Align(
        alignment: Alignment.bottomRight,
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 12.0,
          child: Icon(
            Icons.camera_alt,
            size: 15.0,
            color: Color(0xFF404040),
          ),
        ),
      ),
    );
  }
}
