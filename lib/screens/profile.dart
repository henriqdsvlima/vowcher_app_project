import 'package:flutter/material.dart';

String _nomeUsuario = 'Henrique Lima';

class VowcherProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: CircleAvatar(
                      radius: 30,
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
                  ),
                  Text(
                    'Olá,\n $_nomeUsuario',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            Container(
              child: Card(
                elevation: 10,
                child: Center(
                  heightFactor: 20.0,
                  child: Text(
                    '$_nomeUsuario \nSão Paulo-SP',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
