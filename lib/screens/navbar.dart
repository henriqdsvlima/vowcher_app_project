import 'package:flutter/material.dart';

import 'profile.dart';
import 'vowcher_login.dart';
import 'vowcher_register.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(60.0),
            child: AppBar(
              backgroundColor: Color(0xFFA5140C),
              bottom: TabBar(
                tabs: [
                  Tab(
                    text: 'Login',
                  ),
                  Tab(
                    text: 'Registro',
                  ),
                  Tab(
                    text: 'Perfil',
                  ),
                ],
              ),
            ),
          ),
          body: TabBarView(children: <Widget>[
            VowcherLogin(),
            VowcherRegister(),
            VowcherProfile(),
          ]),
        ));
  }
}
