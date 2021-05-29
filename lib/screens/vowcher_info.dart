import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  Info({Key key}) : super(key: key);

  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SizedBox(
        child: Container(
          alignment: Alignment.topCenter,
          margin: EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.red.shade100,
                  backgroundImage: AssetImage('assets/images/user.png'),
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
                ),
                Text(
                  'Ola Membro\nBem Vindo',
                  style: Theme.of(context).textTheme.headline6,
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.red.shade100,
                      backgroundImage: AssetImage('assets/images/user.png'),
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
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
