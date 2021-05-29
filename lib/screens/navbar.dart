import 'package:flutter/material.dart';

import 'cupom_home.dart';
import 'profile.dart';
import 'vowcher_info.dart';

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
                    text: 'Perfil',
                  ),
                  Tab(
                    text: 'Meus Cupons',
                  ),
                  Tab(
                    text: 'Informações',
                  )
                ],
              ),
            ),
          ),
          body: TabBarView(children: <Widget>[
            VowcherProfile(),
            CupomHomePage(),
            Info(),
          ]),
        ));
  }
}
