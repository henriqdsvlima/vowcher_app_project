import 'package:flutter/material.dart';
import 'package:vowcher_app_project/components/circle_avatar.dart';

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
                        child: Avatar(),
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
